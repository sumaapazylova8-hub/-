<!DOCTYPE html>
<html lang="kk">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Қыз ұзату шақыру</title>
<style>
  body, html {margin:0; padding:0; font-family:'Arial', sans-serif; overflow-x:hidden;}
  .slide {width:100vw; height:100vh; display:flex; flex-direction:column; justify-content:center; align-items:center; text-align:center; transition:transform 0.5s ease;}
  .slide h1 {font-size:2rem; margin-bottom:20px;}
  .slide p {font-size:1.2rem; margin:5px 0;}
  .slide img {max-width:80%; max-height:50%; border-radius:15px; box-shadow:0 4px 15px rgba(0,0,0,0.3); margin-bottom:20px;}
  .button {background:linear-gradient(90deg,#ff8a65,#fbc02d); border:none; padding:12px 24px; color:white; font-size:1rem; border-radius:50px; cursor:pointer; margin-top:10px;}
  #musicButton {position:fixed; top:20px; right:20px; z-index:100;}
</style>
</head>
<body>

<!-- Музыка -->
<audio id="bgMusic" loop>
  <source src="music.mp3" type="audio/mpeg">
</audio>
<button id="musicButton" class="button">Музыка қосу</button>

<!-- Слайды -->
<div class="slide" style="background: linear-gradient(to bottom, #ffd5ec, #ffe4e1);">
  <h1>Құрметті қонақтар!</h1>
  <p>Бізді қуанышқа ортақтасуға шақырамыз</p>
</div>

<div class="slide" style="background: linear-gradient(to bottom, #e0f7fa, #b2ebf2);">
  <h1>Невеста</h1>
  <img src="photo1.jpg" alt="Невеста">
  <img src="photo2.jpg" alt="Семья">
</div>

<div class="slide" style="background: linear-gradient(to bottom, #fff3e0, #ffe0b2);">
  <h1>Мероприятие</h1>
  <p>Дата: 20.10.2025</p>
  <p>Время: 18:00</p>
  <p>Место: Алматы, Казахстан</p>
</div>

<div class="slide" style="background: linear-gradient(to bottom, #f3e5f5, #e1bee7);">
  <h1>RSVP</h1>
  <p>Подтвердите участие:</p>
  <button class="button">Я приду!</button>
</div>

<script>
let currentSlide = 0;
const slides = document.querySelectorAll('.slide');
document.body.addEventListener('wheel', (e) => {
  if(e.deltaY > 0){ nextSlide(); } else { prevSlide(); }
});

function showSlide(index){
  slides.forEach((slide, i)=>{
    slide.style.transform = `translateY(-${index * 100}vh)`;
  });
}

function nextSlide(){ if(currentSlide < slides.length - 1){ currentSlide++; showSlide(currentSlide); } }
function prevSlide(){ if(currentSlide > 0){ currentSlide--; showSlide(currentSlide); } }

// Музыка
const musicButton = document.getElementById('musicButton');
const bgMusic = document.getElementById('bgMusic');
musicButton.addEventListener('click', ()=>{
  if(bgMusic.paused){ bgMusic.play(); musicButton.textContent="Музыка өшіру"; } 
  else { bgMusic.pause(); musicButton.textContent="Музыка қосу"; }
});
</script>

</body>
</html>