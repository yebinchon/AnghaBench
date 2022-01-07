
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int input_bind_timeout; int input_bind_hold; } ;
struct TYPE_8__ {TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;
typedef enum retro_key { ____Placeholder_retro_key } retro_key ;
struct TYPE_7__ {int key; } ;
struct TYPE_9__ {scalar_t__ begin; scalar_t__ last; int timer_timeout; int timer_hold; TYPE_2__* output; TYPE_2__ buffer; } ;


 TYPE_3__* config_get_ptr () ;
 TYPE_4__ menu_input_binds ;
 int rarch_timer_begin_new_time (int *,int ) ;

__attribute__((used)) static bool menu_input_key_bind_custom_bind_keyboard_cb(
      void *data, unsigned code)
{
   settings_t *settings = config_get_ptr();


   menu_input_binds.buffer.key = (enum retro_key)code;


   *(menu_input_binds.output)=menu_input_binds.buffer;


   menu_input_binds.begin++;
   menu_input_binds.output++;
   menu_input_binds.buffer=*(menu_input_binds.output);
   rarch_timer_begin_new_time(&menu_input_binds.timer_hold, settings->uints.input_bind_hold);
   rarch_timer_begin_new_time(&menu_input_binds.timer_timeout, settings->uints.input_bind_timeout);

   return (menu_input_binds.begin <= menu_input_binds.last);
}
