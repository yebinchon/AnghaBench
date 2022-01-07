
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_4__ {int mouse_r; int mouse_m; int mouse_x_delta; int mouse_y_delta; int mouse_wu; int mouse_wd; int mouse_l; } ;
typedef TYPE_1__ android_input_t ;
 int android_check_quick_tap (TYPE_1__*) ;

__attribute__((used)) static int16_t android_mouse_state(android_input_t *android, unsigned id)
{
   int val = 0;
   switch (id)
   {
      case 134:
         val = android->mouse_l || android_check_quick_tap(android);
         break;
      case 132:
         val = android->mouse_r;
         break;
      case 133:
         val = android->mouse_m;
         break;
      case 129:
         val = android->mouse_x_delta;
         android->mouse_x_delta = 0;
         break;
      case 128:
         val = android->mouse_y_delta;
         android->mouse_y_delta = 0;
         break;
      case 130:
         val = android->mouse_wu;
         android->mouse_wu = 0;
         break;
      case 131:
         val = android->mouse_wd;
         android->mouse_wd = 0;
         break;
   }

   return val;
}
