
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buttons; double scroll_y; double scroll_x; int delta_y; int y; int delta_x; int x; } ;
typedef TYPE_1__ rwebinput_mouse_state_t ;
typedef int int16_t ;
 int RWEBINPUT_MOUSE_BTN4 ;
 int RWEBINPUT_MOUSE_BTN5 ;
 int RWEBINPUT_MOUSE_BTNL ;
 int RWEBINPUT_MOUSE_BTNM ;
 int RWEBINPUT_MOUSE_BTNR ;

__attribute__((used)) static int16_t rwebinput_mouse_state(rwebinput_mouse_state_t *mouse,
   unsigned id, bool screen)
{
   switch (id)
   {
      case 129:
         return (int16_t)(screen ? mouse->x : mouse->delta_x);
      case 128:
         return (int16_t)(screen ? mouse->y : mouse->delta_y);
      case 134:
         return !!(mouse->buttons & (1 << RWEBINPUT_MOUSE_BTNL));
      case 132:
         return !!(mouse->buttons & (1 << RWEBINPUT_MOUSE_BTNR));
      case 133:
         return !!(mouse->buttons & (1 << RWEBINPUT_MOUSE_BTNM));
      case 138:
         return !!(mouse->buttons & (1 << RWEBINPUT_MOUSE_BTN4));
      case 137:
         return !!(mouse->buttons & (1 << RWEBINPUT_MOUSE_BTN5));
      case 130:
         return mouse->scroll_y < 0.0;
      case 131:
         return mouse->scroll_y > 0.0;
      case 135:
         return mouse->scroll_x < 0.0;
      case 136:
         return mouse->scroll_x > 0.0;
   }

   return 0;
}
