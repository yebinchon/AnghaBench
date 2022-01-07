
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct parport_joypad {int buttons; } ;


 scalar_t__ BIT32_GET (int ,int ) ;
 int PARPORT_NUM_BUTTONS ;
 int * parport_pads ;

__attribute__((used)) static bool parport_joypad_button(unsigned port, uint16_t joykey)
{
   const struct parport_joypad *pad = (const struct parport_joypad*)&parport_pads[port];
   return joykey < PARPORT_NUM_BUTTONS && BIT32_GET(pad->buttons, joykey);
}
