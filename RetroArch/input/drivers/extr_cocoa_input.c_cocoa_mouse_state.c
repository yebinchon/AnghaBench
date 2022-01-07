
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int mouse_rel_x; int mouse_x_last; int mouse_rel_y; int mouse_y_last; int mouse_buttons; int mouse_wu; int mouse_wd; int mouse_wl; int mouse_wr; } ;
typedef TYPE_1__ cocoa_input_data_t ;
__attribute__((used)) static int16_t cocoa_mouse_state(cocoa_input_data_t *apple,
      unsigned id)
{
   switch (id)
   {
      case 129:
           return apple->mouse_rel_x - apple->mouse_x_last;
      case 128:
         return apple->mouse_rel_y - apple->mouse_y_last;
      case 133:
         return apple->mouse_buttons & 1;
      case 132:
         return apple->mouse_buttons & 2;
       case 130:
           return apple->mouse_wu;
       case 131:
           return apple->mouse_wd;
       case 134:
           return apple->mouse_wl;
       case 135:
           return apple->mouse_wr;
   }

   return 0;
}
