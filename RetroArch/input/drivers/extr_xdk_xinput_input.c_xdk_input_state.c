
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* joypad; } ;
typedef TYPE_2__ xdk_input_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct retro_keybind {int joyaxis; int joykey; } ;
struct TYPE_9__ {float axis_threshold; int joy_idx; TYPE_1__* auto_binds; } ;
typedef TYPE_3__ rarch_joypad_info_t ;
typedef int int16_t ;
struct TYPE_10__ {int (* axis ) (int ,int const) ;int (* button ) (int ,int ) ;} ;
struct TYPE_7__ {int joyaxis; int joykey; } ;


 int AXIS_NONE ;
 unsigned int DEFAULT_MAX_PADS ;
 int NO_BTN ;
 unsigned int RARCH_FIRST_CUSTOM_BIND ;

 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ;

 scalar_t__ abs (int ) ;
 int input_joypad_analog (TYPE_5__*,TYPE_3__,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int const) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int const) ;

__attribute__((used)) static int16_t xdk_input_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds,
      unsigned port, unsigned device,
      unsigned index, unsigned id)
{
   xdk_input_t *xdk = (xdk_input_t*)data;

   if (port >= DEFAULT_MAX_PADS)
      return 0;

   switch (device)
   {
      case 128:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;

            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {

               const uint64_t joykey = (binds[port][i].joykey != NO_BTN)
                  ? binds[port][i].joykey : joypad_info.auto_binds[i].joykey;
               const uint32_t joyaxis = (binds[port][i].joyaxis != AXIS_NONE)
                  ? binds[port][i].joyaxis : joypad_info.auto_binds[i].joyaxis;

               if ((uint16_t)joykey != NO_BTN && xdk->joypad->button(joypad_info.joy_idx, (uint16_t)joykey))
               {
                  ret |= (1 << i);
                  continue;
               }
               if (((float)abs(xdk->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
               {
                  ret |= (1 << i);
                  continue;
               }
            }

            return ret;
         }
         else
         {

            const uint64_t joykey = (binds[port][id].joykey != NO_BTN)
               ? binds[port][id].joykey : joypad_info.auto_binds[id].joykey;
            const uint32_t joyaxis = (binds[port][id].joyaxis != AXIS_NONE)
               ? binds[port][id].joyaxis : joypad_info.auto_binds[id].joyaxis;

            if ((uint16_t)joykey != NO_BTN && xdk->joypad->button(joypad_info.joy_idx, (uint16_t)joykey))
               return 1;
            if (((float)abs(xdk->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
               return 1;
         }
         break;
      case 129:
         if (binds[port])
            return input_joypad_analog(xdk->joypad, joypad_info, port, index, id, binds[port]);
         break;
   }

   return 0;
}
