
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dinput_input {int mouse_rel_x; int mouse_rel_y; int mouse_l; int mouse_r; int mouse_wu; int mouse_wd; int mouse_hwu; int mouse_hwd; int mouse_m; int mouse_b4; int mouse_b5; } ;
struct TYPE_4__ {scalar_t__* input_mouse_index; } ;
struct TYPE_5__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
typedef int int16_t ;


 unsigned int MAX_USERS ;
 TYPE_2__* config_get_ptr () ;

__attribute__((used)) static int16_t dinput_mouse_state(struct dinput_input *di, unsigned port, unsigned id)
{
   int16_t state = 0;

 settings_t *settings = config_get_ptr();

 if (port >= MAX_USERS)
  return 0;


 if (settings->uints.input_mouse_index[ port ] != 0)
  return 0;

   switch (id)
   {
      case 129:
         return di->mouse_rel_x;
      case 128:
         return di->mouse_rel_y;
      case 134:
         return di->mouse_l;
      case 132:
         return di->mouse_r;
      case 130:
         if (di->mouse_wu)
            state = 1;
         di->mouse_wu = 0;
         return state;
      case 131:
         if (di->mouse_wd)
            state = 1;
         di->mouse_wd = 0;
         return state;
      case 135:
         if (di->mouse_hwu)
            state = 1;
         di->mouse_hwu = 0;
         return state;
      case 136:
         if (di->mouse_hwd)
            state = 1;
         di->mouse_hwd = 0;
         return state;
      case 133:
         return di->mouse_m;
      case 138:
         return di->mouse_b4;
      case 137:
         return di->mouse_b5;
   }

   return 0;
}
