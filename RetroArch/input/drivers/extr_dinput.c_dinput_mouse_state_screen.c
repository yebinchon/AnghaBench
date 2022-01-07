
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dinput_input {int mouse_x; int mouse_y; } ;
struct TYPE_4__ {scalar_t__* input_mouse_index; } ;
struct TYPE_5__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
typedef int int16_t ;


 unsigned int MAX_USERS ;


 TYPE_2__* config_get_ptr () ;
 int dinput_mouse_state (struct dinput_input*,unsigned int,unsigned int) ;

__attribute__((used)) static int16_t dinput_mouse_state_screen(struct dinput_input *di, unsigned port, unsigned id)
{
 settings_t *settings = config_get_ptr();

 if (port >= MAX_USERS)
  return 0;


 if (settings->uints.input_mouse_index[ port ] != 0)
  return 0;

   switch (id)
   {
      case 129:
         return di->mouse_x;
      case 128:
         return di->mouse_y;
      default:
         break;
   }

   return dinput_mouse_state(di, port, id);
}
