
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int triggered; } ;
struct TYPE_7__ {int flags; TYPE_1__ cmd_trigger; int (* change_handler ) (TYPE_2__*) ;} ;
typedef TYPE_2__ rarch_setting_t ;


 int SD_FLAG_EXIT ;
 scalar_t__ setting_generic_action_ok_default (TYPE_2__*,int) ;
 int stub1 (TYPE_2__*) ;

int menu_setting_generic(rarch_setting_t *setting, bool wraparound)
{
   uint64_t flags = setting->flags;
   if (setting_generic_action_ok_default(setting, wraparound) != 0)
      return -1;

   if (setting->change_handler)
      setting->change_handler(setting);

   if ((flags & SD_FLAG_EXIT) && setting->cmd_trigger.triggered)
   {
      setting->cmd_trigger.triggered = 0;
      return -1;
   }

   return 0;
}
