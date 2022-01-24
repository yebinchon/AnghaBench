#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct retro_keybind {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mouse; int /*<<< orphan*/  joypad; } ;
typedef  TYPE_1__ rwebinput_input_t ;
typedef  int /*<<< orphan*/  rarch_joypad_info_t ;
typedef  int int16_t ;

/* Variables and functions */
 unsigned int RARCH_BIND_LIST_END ; 
#define  RARCH_DEVICE_MOUSE_SCREEN 134 
#define  RARCH_DEVICE_POINTER_SCREEN 133 
 unsigned int RARCH_FIRST_CUSTOM_BIND ; 
#define  RETRO_DEVICE_ANALOG 132 
 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ; 
#define  RETRO_DEVICE_JOYPAD 131 
#define  RETRO_DEVICE_KEYBOARD 130 
#define  RETRO_DEVICE_MOUSE 129 
#define  RETRO_DEVICE_POINTER 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct retro_keybind const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int FUNC3 (TYPE_1__*,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static int16_t FUNC6(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds,
      unsigned port, unsigned device, unsigned idx, unsigned id)
{
   rwebinput_input_t *rwebinput  = (rwebinput_input_t*)data;

   switch (device)
   {
      case RETRO_DEVICE_JOYPAD:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;
            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {
               if (FUNC2(
                        rwebinput, joypad_info, port, binds[port], i))
               {
                  ret |= (1 << i);
                  continue;
               }
            }

            return ret;
         }
         else
         {
            if (id < RARCH_BIND_LIST_END)
               if (FUNC2(rwebinput, joypad_info, binds[port],
                     port, id))
                  return true;
         }
         break;
      case RETRO_DEVICE_ANALOG:
         {
            int16_t ret = FUNC1(
                  rwebinput, joypad_info, binds[port],
                  idx, id);
            if (!ret && binds[port])
               ret = FUNC0(rwebinput->joypad, joypad_info, port,
                     idx, id, binds[port]);
            return ret;
         }
      case RETRO_DEVICE_KEYBOARD:
         return FUNC3(rwebinput, id);
      case RETRO_DEVICE_MOUSE:
         return FUNC4(&rwebinput->mouse, id, false);
      case RARCH_DEVICE_MOUSE_SCREEN:
         return FUNC4(&rwebinput->mouse, id, true);
      case RETRO_DEVICE_POINTER:
         return FUNC5(&rwebinput->mouse, id, false);
      case RARCH_DEVICE_POINTER_SCREEN:
         return FUNC5(&rwebinput->mouse, id, true);
   }

   return 0;
}