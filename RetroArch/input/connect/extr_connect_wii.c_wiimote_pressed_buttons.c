
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct connect_wii_wiimote_t {int btns; } ;
typedef int int16_t ;


 int WIIMOTE_BUTTON_ALL ;
 int swap_if_little16 (int) ;

__attribute__((used)) static void wiimote_pressed_buttons(struct connect_wii_wiimote_t* wm, uint8_t* msg)
{

   int16_t *val = (int16_t*)msg;
   int16_t now = swap_if_little16(*val) & WIIMOTE_BUTTON_ALL;

   wm->btns = now;
}
