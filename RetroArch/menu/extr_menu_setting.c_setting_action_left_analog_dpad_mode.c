
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* input_analog_dpad_mode; } ;
struct TYPE_8__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_9__ {unsigned int index_offset; } ;
typedef TYPE_3__ rarch_setting_t ;


 int ANALOG_DPAD_LAST ;
 TYPE_2__* config_get_ptr () ;
 int configuration_set_uint (TYPE_2__*,int,int) ;

__attribute__((used)) static int setting_action_left_analog_dpad_mode(rarch_setting_t *setting, bool wraparound)
{
   unsigned port = 0;
   settings_t *settings = config_get_ptr();

   if (!setting)
      return -1;

   port = setting->index_offset;

   configuration_set_uint(settings, settings->uints.input_analog_dpad_mode[port],
      (settings->uints.input_analog_dpad_mode
       [port] + ANALOG_DPAD_LAST - 1) % ANALOG_DPAD_LAST);

   return 0;
}
