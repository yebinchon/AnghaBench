
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ num_axes; int joypad; } ;
typedef TYPE_1__ sdl_joypad_t ;
typedef int int16_t ;


 scalar_t__ AXIS_NEG_GET (scalar_t__) ;
 scalar_t__ AXIS_NONE ;
 scalar_t__ AXIS_POS_GET (scalar_t__) ;
 int sdl_pad_get_axis (TYPE_1__*,scalar_t__) ;
 int * sdl_pads ;

__attribute__((used)) static int16_t sdl_joypad_axis(unsigned port, uint32_t joyaxis)
{
   sdl_joypad_t *pad;
   int16_t val = 0;

   if (joyaxis == AXIS_NONE)
      return 0;

   pad = (sdl_joypad_t*)&sdl_pads[port];
   if (!pad->joypad)
      return 0;

   if (AXIS_NEG_GET(joyaxis) < pad->num_axes)
   {
      val = sdl_pad_get_axis(pad, AXIS_NEG_GET(joyaxis));

      if (val > 0)
         val = 0;
      else if (val < -0x7fff)
         val = -0x7fff;
   }
   else if (AXIS_POS_GET(joyaxis) < pad->num_axes)
   {
      val = sdl_pad_get_axis(pad, AXIS_POS_GET(joyaxis));

      if (val < 0)
         val = 0;
   }

   return val;
}
