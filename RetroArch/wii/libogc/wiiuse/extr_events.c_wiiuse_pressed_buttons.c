
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct wiimote_t {short btns_last; short btns; short btns_held; short btns_released; } ;


 short BIG_ENDIAN_SHORT (short) ;
 short WIIMOTE_BUTTON_ALL ;

void wiiuse_pressed_buttons(struct wiimote_t* wm, ubyte* msg) {
 short now;


 now = BIG_ENDIAN_SHORT(*(short*)msg) & WIIMOTE_BUTTON_ALL;


 wm->btns_last = wm->btns;


 wm->btns_held = (now & wm->btns);


 wm->btns_released = ((wm->btns | wm->btns_held) & ~now);


 wm->btns = now;
}
