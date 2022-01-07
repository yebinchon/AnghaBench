
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rarch_setting_t ;
struct TYPE_4__ {int size; scalar_t__ index; } ;
typedef TYPE_1__ rarch_setting_info_t ;


 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int * menu_setting_new_internal (TYPE_1__*) ;

__attribute__((used)) static rarch_setting_t *menu_setting_new(void)
{
   rarch_setting_t* list = ((void*)0);
   rarch_setting_info_t *list_info = (rarch_setting_info_t*)
      malloc(sizeof(*list_info));

   if (!list_info)
      return ((void*)0);

   list_info->index = 0;
   list_info->size = 32;

   list = menu_setting_new_internal(list_info);

   if (list_info)
      free(list_info);

   list_info = ((void*)0);

   return list;
}
