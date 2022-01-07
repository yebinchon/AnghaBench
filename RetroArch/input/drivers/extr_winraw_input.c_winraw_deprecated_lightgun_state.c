
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dlt_y; int dlt_x; } ;
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

__attribute__((used)) static int16_t winraw_deprecated_lightgun_state(winraw_input_t *wr,
      unsigned port, unsigned id)
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
         return mouse->dlt_x;
      case 128:
         return mouse->dlt_y;
   }

   return 0;
}
