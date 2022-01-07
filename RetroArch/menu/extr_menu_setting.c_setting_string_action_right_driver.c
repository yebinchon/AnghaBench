
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ menu_navigation_wraparound_enable; } ;
struct TYPE_14__ {TYPE_1__ bools; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_12__ {int string; } ;
struct TYPE_13__ {TYPE_2__ target; } ;
struct TYPE_15__ {int (* change_handler ) (TYPE_5__*) ;int size; TYPE_3__ value; int name; } ;
typedef TYPE_5__ rarch_setting_t ;
struct TYPE_16__ {int len; int s; int label; } ;
typedef TYPE_6__ driver_ctx_info_t ;


 int RARCH_DRIVER_CTL_FIND_FIRST ;
 int RARCH_DRIVER_CTL_FIND_NEXT ;
 TYPE_4__* config_get_ptr () ;
 int driver_ctl (int ,TYPE_6__*) ;
 int stub1 (TYPE_5__*) ;

__attribute__((used)) static int setting_string_action_right_driver(rarch_setting_t *setting,
      bool wraparound)
{
   driver_ctx_info_t drv;

   if (!setting)
      return -1;

   drv.label = setting->name;
   drv.s = setting->value.target.string;
   drv.len = setting->size;

   if (!driver_ctl(RARCH_DRIVER_CTL_FIND_NEXT, &drv))
   {
      settings_t *settings = config_get_ptr();

      if (settings && settings->bools.menu_navigation_wraparound_enable)
      {
         drv.label = setting->name;
         drv.s = setting->value.target.string;
         drv.len = setting->size;
         driver_ctl(RARCH_DRIVER_CTL_FIND_FIRST, &drv);
      }
   }

   if (setting->change_handler)
      setting->change_handler(setting);

   return 0;
}
