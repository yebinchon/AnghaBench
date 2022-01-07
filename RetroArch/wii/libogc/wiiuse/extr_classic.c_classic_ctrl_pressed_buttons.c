
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct classic_ctrl_t {short btns_last; short btns; short btns_held; short btns_released; } ;


 short CLASSIC_CTRL_BUTTON_ALL ;

__attribute__((used)) static void classic_ctrl_pressed_buttons(struct classic_ctrl_t* cc, short now) {

 now = ~now & CLASSIC_CTRL_BUTTON_ALL;


 cc->btns_last = cc->btns;


 cc->btns_held = (now & cc->btns);


 cc->btns_released = ((cc->btns | cc->btns_held) & ~now);


 cc->btns = now;
}
