
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct connect_wii_wiimote_t {int leds; } ;


 int WM_CMD_LED ;
 int wiimote_is_connected (struct connect_wii_wiimote_t*) ;
 int wiimote_send (struct connect_wii_wiimote_t*,int ,int*,int) ;

__attribute__((used)) static void wiimote_set_leds(struct connect_wii_wiimote_t* wm, int leds)
{
   uint8_t buf = {0};

   if (!wm || !wiimote_is_connected(wm))
      return;


   wm->leds = (leds & 0xF0);
   buf = wm->leds;

   wiimote_send(wm, WM_CMD_LED, &buf, 1);
}
