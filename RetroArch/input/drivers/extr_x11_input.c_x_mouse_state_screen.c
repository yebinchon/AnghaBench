
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mouse_y; int mouse_x; } ;
typedef TYPE_1__ x11_input_t ;
typedef int int16_t ;




 int x_mouse_state (TYPE_1__*,unsigned int) ;

__attribute__((used)) static int16_t x_mouse_state_screen(x11_input_t *x11, unsigned id)
{
   switch (id)
   {
      case 129:
         return x11->mouse_x;
      case 128:
         return x11->mouse_y;
      default:
         break;
   }

   return x_mouse_state(x11, id);
}
