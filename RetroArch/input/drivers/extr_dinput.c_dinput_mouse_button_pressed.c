
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dinput_input {int mouse_l; int mouse_r; int mouse_m; int mouse_b4; int mouse_b5; int mouse_wu; int mouse_wd; int mouse_hwu; int mouse_hwd; } ;
struct TYPE_4__ {scalar_t__* input_mouse_index; } ;
struct TYPE_5__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;


 unsigned int MAX_USERS ;
 TYPE_2__* config_get_ptr () ;

__attribute__((used)) static bool dinput_mouse_button_pressed(
      struct dinput_input *di, unsigned port, unsigned key)
{
 bool result;
 settings_t *settings = config_get_ptr();

 if (port >= MAX_USERS)
  return 0;


 if ( settings->uints.input_mouse_index[ port ] != 0)
  return 0;

 switch (key)
   {
      case 132:
         return di->mouse_l;
      case 130:
         return di->mouse_r;
      case 131:
         return di->mouse_m;
      case 136:
         return di->mouse_b4;
      case 135:
         return di->mouse_b5;

      case 128:
         result = di->mouse_wu;
         di->mouse_wu = 0;
         return result;

      case 129:
         result = di->mouse_wd;
         di->mouse_wd = 0;
         return result;

      case 133:
         result = di->mouse_hwu;
         di->mouse_hwu = 0;
         return result;

      case 134:
         result = di->mouse_hwd;
         di->mouse_hwd = 0;
         return result;

   }

 return 0;
}
