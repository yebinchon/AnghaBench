
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* action_get_title ) (char const*,char const*,unsigned int,char*,size_t) ;char* action_title_cache; } ;
typedef TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_7__ {int size; TYPE_1__* list; } ;
typedef TYPE_3__ file_list_t ;
struct TYPE_5__ {scalar_t__ actiondata; } ;


 int menu_entries_get_last_stack (char const**,char const**,unsigned int*,int *,int *) ;
 scalar_t__ menu_entries_list ;
 TYPE_3__* menu_list_get (scalar_t__,int ) ;
 int string_is_empty (char*) ;
 int strlcpy (char*,char*,int) ;
 int stub1 (char const*,char const*,unsigned int,char*,size_t) ;

int menu_entries_get_title(char *s, size_t len)
{
   unsigned menu_type = 0;
   const char *path = ((void*)0);
   const char *label = ((void*)0);
   const file_list_t *list = menu_entries_list ?
      menu_list_get(menu_entries_list, 0) : ((void*)0);
   menu_file_list_cbs_t *cbs = list
      ? (menu_file_list_cbs_t*)list->list[list->size - 1].actiondata
      : ((void*)0);

   if (!cbs)
      return -1;

   if (cbs && cbs->action_get_title)
   {
      int ret;
      if (!string_is_empty(cbs->action_title_cache))
      {
         strlcpy(s, cbs->action_title_cache, len);
         return 0;
      }
      menu_entries_get_last_stack(&path, &label, &menu_type, ((void*)0), ((void*)0));
      ret = cbs->action_get_title(path, label, menu_type, s, len);
      if (ret == 1)
         strlcpy(cbs->action_title_cache, s, sizeof(cbs->action_title_cache));
      return ret;
   }
   return 0;
}
