
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ idx; int triggered; } ;
struct TYPE_5__ {TYPE_1__ cmd_trigger; } ;
typedef TYPE_2__ rarch_setting_t ;


 scalar_t__ CMD_EVENT_NONE ;

int setting_generic_action_ok_default(rarch_setting_t *setting, bool wraparound)
{
   if (!setting)
      return -1;

   (void)wraparound;

   if (setting->cmd_trigger.idx != CMD_EVENT_NONE)
      setting->cmd_trigger.triggered = 1;

   return 0;
}
