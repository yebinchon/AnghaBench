
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* get_string_representation ) (TYPE_2__*,char*,size_t) ;} ;
typedef TYPE_2__ rarch_setting_t ;
struct TYPE_9__ {TYPE_1__* list; } ;
typedef TYPE_3__ file_list_t ;
struct TYPE_7__ {int label; } ;


 TYPE_2__* menu_setting_find (int ) ;
 int stub1 (TYPE_2__*,char*,size_t) ;

void menu_setting_get_label(file_list_t *list, char *s,
      size_t len, unsigned *w, unsigned type,
      const char *menu_label, unsigned idx)
{
   rarch_setting_t *setting = ((void*)0);
   if (!list)
      return;

   setting = menu_setting_find(list->list[idx].label);

   if (setting && setting->get_string_representation)
      setting->get_string_representation(setting, s, len);
}
