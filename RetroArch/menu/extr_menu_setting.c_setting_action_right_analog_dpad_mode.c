
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* input_analog_dpad_mode; } ;
struct TYPE_7__ {int modified; TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {unsigned int index_offset; } ;
typedef TYPE_3__ rarch_setting_t ;


 int ANALOG_DPAD_LAST ;
 TYPE_2__* config_get_ptr () ;

__attribute__((used)) static int setting_action_right_analog_dpad_mode(rarch_setting_t *setting, bool wraparound)
{
   unsigned port = 0;
   settings_t *settings = config_get_ptr();

   if (!setting)
      return -1;

   port = setting->index_offset;

   settings->modified = 1;
   settings->uints.input_analog_dpad_mode[port] =
      (settings->uints.input_analog_dpad_mode[port] + 1)
      % ANALOG_DPAD_LAST;

   return 0;
}
