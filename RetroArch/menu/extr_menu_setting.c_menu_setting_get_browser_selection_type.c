
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int browser_selection_type; } ;
typedef TYPE_1__ rarch_setting_t ;
typedef enum setting_type { ____Placeholder_setting_type } setting_type ;


 int ST_NONE ;

enum setting_type menu_setting_get_browser_selection_type(rarch_setting_t *setting)
{
   if (!setting)
      return ST_NONE;
   return setting->browser_selection_type;
}
