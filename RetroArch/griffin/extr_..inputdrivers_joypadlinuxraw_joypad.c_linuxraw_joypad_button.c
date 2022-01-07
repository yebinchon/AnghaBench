
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct linuxraw_joypad {int buttons; } ;


 scalar_t__ BIT32_GET (int ,int ) ;
 int NUM_BUTTONS ;
 int * linuxraw_pads ;

__attribute__((used)) static bool linuxraw_joypad_button(unsigned port, uint16_t joykey)
{
   const struct linuxraw_joypad *pad = (const struct linuxraw_joypad*)
      &linuxraw_pads[port];

   return joykey < NUM_BUTTONS && BIT32_GET(pad->buttons, joykey);
}
