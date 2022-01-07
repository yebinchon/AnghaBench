
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mouse_l; int mouse_r; int mouse_m; } ;
typedef TYPE_2__ x11_input_t ;
struct TYPE_6__ {scalar_t__* input_mouse_index; } ;
struct TYPE_8__ {TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;


 unsigned int MAX_USERS ;







 TYPE_3__* config_get_ptr () ;
 int x_mouse_state_wheel (unsigned int) ;

__attribute__((used)) static bool x_mouse_button_pressed(
      x11_input_t *x11, unsigned port, unsigned key)
{
   bool result;
   settings_t *settings = config_get_ptr();

   if (port >= MAX_USERS)
      return 0;


   if ( settings->uints.input_mouse_index[ port ] != 0 )
      return 0;

   switch ( key )
   {

   case 132:
      return x11->mouse_l;
   case 130:
      return x11->mouse_r;
   case 131:
      return x11->mouse_m;





   case 128:
   case 129:
   case 133:
   case 134:
      return x_mouse_state_wheel( key );
   }

   return 0;
}
