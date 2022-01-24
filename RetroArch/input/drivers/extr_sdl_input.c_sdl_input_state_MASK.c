#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct retro_keybind {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  joypad; } ;
typedef  TYPE_1__ sdl_input_t ;
typedef  int /*<<< orphan*/  rarch_joypad_info_t ;
typedef  int int16_t ;
typedef  enum input_device_type { ____Placeholder_input_device_type } input_device_type ;

/* Variables and functions */
 int INPUT_DEVICE_TYPE_NONE ; 
 unsigned int RARCH_BIND_LIST_END ; 
#define  RARCH_DEVICE_POINTER_SCREEN 134 
 unsigned int RARCH_FIRST_CUSTOM_BIND ; 
 unsigned int RETROK_LAST ; 
#define  RETRO_DEVICE_ANALOG 133 
 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ; 
#define  RETRO_DEVICE_JOYPAD 132 
#define  RETRO_DEVICE_KEYBOARD 131 
#define  RETRO_DEVICE_LIGHTGUN 130 
#define  RETRO_DEVICE_MOUSE 129 
#define  RETRO_DEVICE_POINTER 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ; 
 int FUNC1 (TYPE_1__*,struct retro_keybind const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct retro_keybind const*,unsigned int,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int FUNC4 (TYPE_1__*,unsigned int) ; 
 int FUNC5 (TYPE_1__*,unsigned int) ; 
 int FUNC6 (TYPE_1__*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int16_t FUNC7(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds,
      unsigned port, unsigned device, unsigned idx, unsigned id)
{
   enum input_device_type type = INPUT_DEVICE_TYPE_NONE;
   sdl_input_t            *sdl = (sdl_input_t*)data;

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
                        sdl, joypad_info, binds[port], port, i, &type))
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
               if (FUNC2(sdl,
                     joypad_info, binds[port], port, id, &type))
                  return true;
         }
         break;
      case RETRO_DEVICE_ANALOG:
         if (binds[port])
         {
            int16_t ret = FUNC1(sdl, binds[port], idx, id);
            if (!ret)
               ret = FUNC0(sdl->joypad,
                        joypad_info, port, idx, id, binds[port]);
            return ret;
         }
         break;
      case RETRO_DEVICE_MOUSE:
         return FUNC5(sdl, id);
      case RETRO_DEVICE_POINTER:
      case RARCH_DEVICE_POINTER_SCREEN:
         if (idx == 0)
            return FUNC6(sdl, idx, id,
                  device == RARCH_DEVICE_POINTER_SCREEN);
         break;
      case RETRO_DEVICE_KEYBOARD:
         return (id < RETROK_LAST) && FUNC3(id);
      case RETRO_DEVICE_LIGHTGUN:
         return FUNC4(sdl, id);
   }

   return 0;
}