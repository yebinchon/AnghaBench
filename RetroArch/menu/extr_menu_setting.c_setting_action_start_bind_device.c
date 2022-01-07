
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * input_joypad_map; } ;
struct TYPE_8__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_9__ {size_t index_offset; } ;
typedef TYPE_3__ rarch_setting_t ;


 TYPE_2__* config_get_ptr () ;
 int configuration_set_uint (TYPE_2__*,int ,size_t) ;

__attribute__((used)) static int setting_action_start_bind_device(rarch_setting_t *setting)
{
   settings_t *settings = config_get_ptr();

   if (!setting || !settings)
      return -1;

   configuration_set_uint(settings,
         settings->uints.input_joypad_map[setting->index_offset], setting->index_offset);
   return 0;
}
