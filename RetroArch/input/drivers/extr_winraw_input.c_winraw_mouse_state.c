
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int x; int dlt_x; int y; int dlt_y; int btn_b5; int btn_b4; int btn_m; int whl_d; int whl_u; int btn_r; int btn_l; } ;
typedef TYPE_2__ winraw_mouse_t ;
struct TYPE_9__ {TYPE_2__* mice; } ;
typedef TYPE_3__ winraw_input_t ;
struct TYPE_7__ {unsigned int* input_mouse_index; } ;
struct TYPE_10__ {TYPE_1__ uints; } ;
typedef TYPE_4__ settings_t ;
typedef int int16_t ;


 unsigned int MAX_USERS ;
 TYPE_4__* config_get_ptr () ;
 unsigned int g_mouse_cnt ;

__attribute__((used)) static int16_t winraw_mouse_state(winraw_input_t *wr,
      unsigned port, bool abs, unsigned id)
{
   unsigned i;
   settings_t *settings = config_get_ptr();
   winraw_mouse_t *mouse = ((void*)0);

   if (port >= MAX_USERS)
      return 0;

   for (i = 0; i < g_mouse_cnt; ++i)
   {
      if (i == settings->uints.input_mouse_index[port])
      {
         mouse = &wr->mice[i];
         break;
      }
   }

   if (!mouse)
      return 0;

   switch (id)
   {
      case 129:
         return abs ? mouse->x : mouse->dlt_x;
      case 128:
         return abs ? mouse->y : mouse->dlt_y;
      case 134:
         return mouse->btn_l ? 1 : 0;
      case 132:
         return mouse->btn_r ? 1 : 0;
      case 130:
         return mouse->whl_u ? 1 : 0;
      case 131:
         return mouse->whl_d ? 1 : 0;
      case 133:
         return mouse->btn_m ? 1 : 0;
      case 136:
         return mouse->btn_b4 ? 1 : 0;
      case 135:
         return mouse->btn_b5 ? 1 : 0;
   }

   return 0;
}
