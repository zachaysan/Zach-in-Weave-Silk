;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         Zach Aysan <zachaysan@gmail.com>

; Default options

#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%


; Slowing down the mouse speed allows us to control the wind better
setdefaultmousespeed, 60

; When this autohotkey is running pressing windows key and "n" (#n) will start the script
#n::

  ;
  ; ==============
  ;             /
  ;            / 
  ;           /
  ;          / 
  ;         /
  ;        /
  ;       /
  ;      /
  ;     /
  ;    /
  ;   /
  ;  /
  ; ==============



  ; <+++ TOP line of "Z" +++>

  MouseMove, 300, 233
  Click down

  ; Note that it would be pointless to wrap common numbers into variables because you can't use variables in the send event block
  ; because there is no way (that I know of) to make them local (the global keyword is forbidden in predefined functions)

  SendEvent {Click 440, 233}

  ; sleeps are places throughout because without them the actions don't always register
  ; so rather than have a chance that some actions are missed, I just place a sleeps 
  ; where I suspect an action might be missed.

  sleep 700

  ; The "shift" key and mouse direction movement controls the wind. 
  ; In this case the default wind direction means that we do not need to use it.

  ; The "s" key stops the wind
  Send {s}
  sleep 100


  ; <+++ Diagonal line of "Z" +++>
  
  MouseMove, 475, 233
  Click down
  SendEvent {Click 355, 335}
  send {LShift down}
  sleep 10

  ; Left clicking allows us to rely on the default mouse speed (unlike move mouse) without having an effect on the canvas

  SendEvent {Click, 300, 400, left}
  sleep 300
  Send {LShift up}
  Send {s}
  sleep 100  


  ; <+++ Lower line of "Z" +++>
  
  MouseMove, 319, 363
  Click down
  SendEvent {Click 511, 363}
  send {LShift down}
  sleep 10
  SendEvent {Click, 580, 363, left}
  sleep 500
  Send {LShift up}
  Send {s}
  
  ;
  ; 
  ;             /\
  ;            /  \
  ;           /    \
  ;          /      \
  ;         /        \
  ;        /==========\
  ;       /            \ 
  ;      /              \
  ;     /                \
  ;    /                  \
  ;   /                    \
  ;  /                      \
  ; 
  

  ; <+++ Lower left to upper right line of "A" +++>

  MouseMove, 500, 363
  Click down
  SendEvent {Click 600, 233}
  send {LShift down}
  sleep 10
  SendEvent {Click, 650, 195, left}
  sleep 10
  send {LShift up}
  Send {s}

  
  ; <+++ Upper left to lower right line of "A" +++>
  
  MouseMove, 604, 208
  Click down
  SendEvent {Click 696, 365}
  send {LShift down}
  sleep 10
  SendEvent {Click, 719, 387, left}
  sleep 10
  send {LShift up}
  Send {s}
  
  ; <+++ Crossing line of "A" (and "Z") +++>
  
  MouseMove, 700, 357
  Click down
  sleep 20
  MouseMove, 628, 315
  sleep 100
  SendEvent {Click 283, 286}
  send {LShift down}
  sleep 10
  SendEvent {Click, 185, 295, left}
  sleep 10
  send {LShift up}
  Send {s}

  ; <+++ A Semi-Circle function that I was too lazy to fully generalize (testing this thing takes forever) +++>

  Draw_Circle(start_pt_x, start_pt_y, end_pt_x, end_pt_y,  center_pt_x, center_pt_y, clockwise)
    {
       x := start_pt_x
       r := (end_pt_y - start_pt_y)/2
       MouseMove, start_pt_x, start_pt_y
       sleep 1000
       Click down
       sleep 1000
       Loop 87 {
         x := x - 1
         y := (0 - 1) * sqrt(r*r - (x - center_pt_x)*(x -  center_pt_x)) + center_pt_y
         MouseMove, x, y
         sleep 300
       }
       Loop 87 {
         x := x + 1
         y := sqrt(r*r - (x - center_pt_x)*(x -  center_pt_x)) + center_pt_y
         MouseMove, x, y
         sleep 300
       }

       MouseMove, end_pt_x, end_pt_y
       sleep 1000

    }




  ;
  ;        ====
  ;      `
  ;     /
  ;     |
  ;     |
  ;      \
  ;       `====
  ;



  ; <+++ The letter "C" +++>
  
  sleep 400
  MouseMove, 889, 220
  click down
  sleep 400  

  ; The "C" didn't look right just as a semi circle, so I added intro and exit straight lines

  MouseMove, 880, 220
  sleep 400
  
  ; This calls the function we crafted for the letter "C" NOTE: This function is not generalized. Email me if you want me to do it. My email is easy to find

  Draw_Circle(846, 220, 846, 380, 846, 300, -1)
  SendEvent {Click, 889, 380}
  send {LShift down}
  sleep 10
  SendEvent {Click, 600, 380, left}
  sleep 10
  send {LShift up}
  Send {s}



  ; |                      |
  ; |                      |
  ; |                      |
  ; |                      |
  ; |                      |
  ; |                      |
  ; |                      |
  ; |======================|
  ; |                      |
  ; |                      |
  ; |                      |
  ; |                      |
  ; |                      |
  ; |                      |
  ; |                      |
  ; |                      |


  ; <+++ Right vert of "H" +++>

  MouseMove, 920, 260
  Click down
  SendEvent {Click 920, 395}
  send {LShift down}
  sleep 10
  SendEvent {Click, 920, 195, left}
  sleep 300
  Send {LShift up}
  Send {s}

  ; <+++ Left vert of "H" +++>

  MouseMove, 1050, 260
  Click down
  SendEvent {Click 1050, 395}
  send {LShift down}
  sleep 10
  SendEvent {Click, 1050, 195, left}
  sleep 300
  Send {LShift up}
  Send {s}

  ; <+++ Horiz cross of "H" +++>

  MouseMove, 841, 300
  Click down
  SendEvent {Click 861, 300}
  send {LShift down}

  ; I wanted a more fluffy cross bar, so I used multiple clicks & sleeps

  sleep 10
  SendEvent {Click, 871, 286, left}
  sleep 40
  SendEvent {Click, 881, 286, left}
  sleep 40
  SendEvent {Click, 891, 286, left}
  sleep 40
  SendEvent {Click, 920, 286, left}
  sleep 140
  SendEvent {Click, 1050, 286, left}
  sleep 140
  Send {LShift up}
  Send {s}

return