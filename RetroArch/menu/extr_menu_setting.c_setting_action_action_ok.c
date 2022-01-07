
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ idx; } ;
struct TYPE_5__ {TYPE_1__ cmd_trigger; } ;
typedef TYPE_2__ rarch_setting_t ;


 scalar_t__ CMD_EVENT_NONE ;
 int command_event (scalar_t__,int *) ;

__attribute__((used)) static int setting_action_action_ok(rarch_setting_t *setting, bool wraparound)
{
   if (!setting)
      return -1;

   (void)wraparound;

   if (setting->cmd_trigger.idx != CMD_EVENT_NONE)
      command_event(setting->cmd_trigger.idx, ((void*)0));

   return 0;
}
