#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int mouse_x; int mouse_last_x; int mouse_y; int mouse_last_y; int /*<<< orphan*/  joypad; } ;
typedef  TYPE_1__ x11_input_t ;
struct retro_keybind {int dummy; } ;
typedef  int /*<<< orphan*/  rarch_joypad_info_t ;
typedef  int int16_t ;

/* Variables and functions */
 unsigned int RARCH_BIND_LIST_END ; 
#define  RARCH_DEVICE_MOUSE_SCREEN 152 
#define  RARCH_DEVICE_POINTER_SCREEN 151 
 unsigned int RARCH_FIRST_CUSTOM_BIND ; 
 unsigned int RARCH_LIGHTGUN_AUX_A ; 
 unsigned int RARCH_LIGHTGUN_AUX_B ; 
 unsigned int RARCH_LIGHTGUN_AUX_C ; 
 unsigned int RARCH_LIGHTGUN_DPAD_DOWN ; 
 unsigned int RARCH_LIGHTGUN_DPAD_LEFT ; 
 unsigned int RARCH_LIGHTGUN_DPAD_RIGHT ; 
 unsigned int RARCH_LIGHTGUN_DPAD_UP ; 
 unsigned int RARCH_LIGHTGUN_RELOAD ; 
 unsigned int RARCH_LIGHTGUN_SELECT ; 
 unsigned int RARCH_LIGHTGUN_START ; 
 unsigned int RARCH_LIGHTGUN_TRIGGER ; 
 unsigned int RETROK_LAST ; 
#define  RETRO_DEVICE_ANALOG 150 
 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ; 
#define  RETRO_DEVICE_ID_LIGHTGUN_AUX_A 149 
#define  RETRO_DEVICE_ID_LIGHTGUN_AUX_B 148 
#define  RETRO_DEVICE_ID_LIGHTGUN_AUX_C 147 
#define  RETRO_DEVICE_ID_LIGHTGUN_DPAD_DOWN 146 
#define  RETRO_DEVICE_ID_LIGHTGUN_DPAD_LEFT 145 
#define  RETRO_DEVICE_ID_LIGHTGUN_DPAD_RIGHT 144 
#define  RETRO_DEVICE_ID_LIGHTGUN_DPAD_UP 143 
#define  RETRO_DEVICE_ID_LIGHTGUN_IS_OFFSCREEN 142 
#define  RETRO_DEVICE_ID_LIGHTGUN_PAUSE 141 
#define  RETRO_DEVICE_ID_LIGHTGUN_RELOAD 140 
#define  RETRO_DEVICE_ID_LIGHTGUN_SCREEN_X 139 
#define  RETRO_DEVICE_ID_LIGHTGUN_SCREEN_Y 138 
#define  RETRO_DEVICE_ID_LIGHTGUN_SELECT 137 
#define  RETRO_DEVICE_ID_LIGHTGUN_START 136 
#define  RETRO_DEVICE_ID_LIGHTGUN_TRIGGER 135 
#define  RETRO_DEVICE_ID_LIGHTGUN_X 134 
#define  RETRO_DEVICE_ID_LIGHTGUN_Y 133 
#define  RETRO_DEVICE_JOYPAD 132 
#define  RETRO_DEVICE_KEYBOARD 131 
#define  RETRO_DEVICE_LIGHTGUN 130 
#define  RETRO_DEVICE_MOUSE 129 
#define  RETRO_DEVICE_POINTER 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct retro_keybind const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 
 int FUNC3 (TYPE_1__*,unsigned int,unsigned int) ; 
 int FUNC4 (TYPE_1__*,unsigned int) ; 
 int FUNC5 (TYPE_1__*,unsigned int) ; 
 int FUNC6 (TYPE_1__*,unsigned int,unsigned int,int) ; 
 int FUNC7 (TYPE_1__*,struct retro_keybind const*,unsigned int,unsigned int) ; 

__attribute__((used)) static int16_t FUNC8(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds, unsigned port,
      unsigned device, unsigned idx, unsigned id)
{
   x11_input_t *x11           = (x11_input_t*)data;

   switch (device)
   {
      case RETRO_DEVICE_JOYPAD:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;
            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {
               if (FUNC1(
                        x11, joypad_info, binds[port], port, i))
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
               if (FUNC1(x11, joypad_info, binds[port], port, id))
                  return true;
         }
         break;
      case RETRO_DEVICE_ANALOG:
         {
            int16_t ret = FUNC7(x11, binds[port], idx, id);
            if (!ret && binds[port])
               ret = FUNC0(x11->joypad, joypad_info,
                     port, idx,
                     id, binds[port]);
            return ret;
         }
      case RETRO_DEVICE_KEYBOARD:
         return (id < RETROK_LAST) && FUNC2(x11, id);
      case RETRO_DEVICE_MOUSE:
         return FUNC4(x11, id);
      case RARCH_DEVICE_MOUSE_SCREEN:
         return FUNC5(x11, id);

      case RETRO_DEVICE_POINTER:
      case RARCH_DEVICE_POINTER_SCREEN:
         if (idx == 0)
            return FUNC6(x11, idx, id,
                  device == RARCH_DEVICE_POINTER_SCREEN);
         break;
      case RETRO_DEVICE_LIGHTGUN:
         switch ( id )
         {
            /*aiming*/
            case RETRO_DEVICE_ID_LIGHTGUN_SCREEN_X:
            case RETRO_DEVICE_ID_LIGHTGUN_SCREEN_Y:
            case RETRO_DEVICE_ID_LIGHTGUN_IS_OFFSCREEN:
               return FUNC3( x11, idx, id );

            /*buttons*/
            case RETRO_DEVICE_ID_LIGHTGUN_TRIGGER:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_TRIGGER);
            case RETRO_DEVICE_ID_LIGHTGUN_RELOAD:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_RELOAD);
            case RETRO_DEVICE_ID_LIGHTGUN_AUX_A:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_AUX_A);
            case RETRO_DEVICE_ID_LIGHTGUN_AUX_B:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_AUX_B);
            case RETRO_DEVICE_ID_LIGHTGUN_AUX_C:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_AUX_C);
            case RETRO_DEVICE_ID_LIGHTGUN_START:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_START);
            case RETRO_DEVICE_ID_LIGHTGUN_SELECT:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_SELECT);
            case RETRO_DEVICE_ID_LIGHTGUN_DPAD_UP:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_UP);
            case RETRO_DEVICE_ID_LIGHTGUN_DPAD_DOWN:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_DOWN);
            case RETRO_DEVICE_ID_LIGHTGUN_DPAD_LEFT:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_LEFT);
            case RETRO_DEVICE_ID_LIGHTGUN_DPAD_RIGHT:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_RIGHT);

            /*deprecated*/
            case RETRO_DEVICE_ID_LIGHTGUN_X:
               return x11->mouse_x - x11->mouse_last_x;
            case RETRO_DEVICE_ID_LIGHTGUN_Y:
               return x11->mouse_y - x11->mouse_last_y;
            case RETRO_DEVICE_ID_LIGHTGUN_PAUSE:
               return FUNC1(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_START);

         }
         break;
   }

   return 0;
}