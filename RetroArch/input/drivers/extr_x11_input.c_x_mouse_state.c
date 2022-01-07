
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mouse_m; scalar_t__ mouse_r; scalar_t__ mouse_l; scalar_t__ mouse_last_y; scalar_t__ mouse_y; scalar_t__ mouse_last_x; scalar_t__ mouse_x; } ;
typedef TYPE_1__ x11_input_t ;
typedef scalar_t__ int16_t ;
 scalar_t__ x_mouse_state_wheel (unsigned int) ;

__attribute__((used)) static int16_t x_mouse_state(x11_input_t *x11, unsigned id)
{
   switch (id)
   {
      case 129:
         return x11->mouse_x - x11->mouse_last_x;
      case 128:
         return x11->mouse_y - x11->mouse_last_y;
      case 134:
         return x11->mouse_l;
      case 132:
         return x11->mouse_r;
      case 130:
      case 131:
      case 135:
      case 136:
         return x_mouse_state_wheel(id);
      case 133:
         return x11->mouse_m;
   }

   return 0;
}
