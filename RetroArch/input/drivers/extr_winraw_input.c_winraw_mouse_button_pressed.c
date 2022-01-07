
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int btn_l; int btn_r; int btn_m; int btn_b4; int btn_b5; int whl_u; int whl_d; } ;
typedef TYPE_2__ winraw_mouse_t ;
struct TYPE_9__ {TYPE_2__* mice; } ;
typedef TYPE_3__ winraw_input_t ;
struct TYPE_7__ {unsigned int* input_mouse_index; } ;
struct TYPE_10__ {TYPE_1__ uints; } ;
typedef TYPE_4__ settings_t ;


 unsigned int MAX_USERS ;







 TYPE_4__* config_get_ptr () ;
 unsigned int g_mouse_cnt ;

__attribute__((used)) static bool winraw_mouse_button_pressed(
      winraw_input_t *wr, unsigned port, unsigned key)
{
 unsigned i;
 winraw_mouse_t *mouse = ((void*)0);
 settings_t *settings = config_get_ptr();

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

 switch ( key )
 {

 case 132:
  return mouse->btn_l;
 case 130:
  return mouse->btn_r;
 case 131:
  return mouse->btn_m;
 case 134:
  return mouse->btn_b4;
 case 133:
  return mouse->btn_b5;
 case 128:
  return mouse->whl_u;
 case 129:
  return mouse->whl_d;
 }

 return 0;
}
