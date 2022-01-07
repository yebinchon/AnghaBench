
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int* input_joypad_map; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {unsigned int index_offset; } ;
typedef TYPE_3__ rarch_setting_t ;


 TYPE_2__* config_get_ptr () ;
 unsigned int input_config_get_device_count () ;

__attribute__((used)) static int setting_action_right_bind_device(rarch_setting_t *setting, bool wraparound)
{
   unsigned index_offset;
   unsigned *p = ((void*)0);
   unsigned max_devices = input_config_get_device_count();
   settings_t *settings = config_get_ptr();

   if (!setting)
      return -1;

   index_offset = setting->index_offset;

   p = &settings->uints.input_joypad_map[index_offset];

   if (*p < max_devices)
      (*p)++;

   return 0;
}
