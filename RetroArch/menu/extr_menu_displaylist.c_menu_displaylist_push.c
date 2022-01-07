
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ (* action_deferred_push ) (TYPE_2__*) ;} ;
typedef TYPE_1__ menu_file_list_cbs_t ;
struct TYPE_13__ {unsigned int type; int enum_idx; int list; void* label; void* path; int menu_list; } ;
typedef TYPE_2__ menu_displaylist_info_t ;
struct TYPE_14__ {int stack; int list; } ;
typedef TYPE_3__ menu_displaylist_ctx_entry_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;


 int MSG_UNKNOWN ;
 int menu_displaylist_info_free (TYPE_2__*) ;
 int menu_displaylist_info_init (TYPE_2__*) ;
 int menu_displaylist_process (TYPE_2__*) ;
 scalar_t__ menu_displaylist_push_internal (char const*,TYPE_3__*,TYPE_2__*) ;
 int menu_entries_get_last_stack (char const**,char const**,unsigned int*,int*,int *) ;
 TYPE_1__* menu_entries_get_last_stack_actiondata () ;
 void* strdup (char const*) ;
 int string_is_empty (char const*) ;
 scalar_t__ stub1 (TYPE_2__*) ;

bool menu_displaylist_push(menu_displaylist_ctx_entry_t *entry)
{
   menu_displaylist_info_t info;
   menu_file_list_cbs_t *cbs = ((void*)0);
   const char *path = ((void*)0);
   const char *label = ((void*)0);
   unsigned type = 0;
   bool ret = 0;
   enum msg_hash_enums enum_idx = MSG_UNKNOWN;

   if (!entry)
      return 0;

   menu_displaylist_info_init(&info);

   menu_entries_get_last_stack(&path, &label, &type, &enum_idx, ((void*)0));

   info.list = entry->list;
   info.menu_list = entry->stack;
   info.type = type;
   info.enum_idx = enum_idx;

   if (!string_is_empty(path))
      info.path = strdup(path);

   if (!string_is_empty(label))
      info.label = strdup(label);

   if (!info.list)
      goto error;

   if (menu_displaylist_push_internal(label, entry, &info))
   {
      ret = menu_displaylist_process(&info);
      goto end;
   }

   cbs = menu_entries_get_last_stack_actiondata();

   if (cbs && cbs->action_deferred_push)
   {
      if (cbs->action_deferred_push(&info) != 0)
         goto error;
   }

   ret = 1;

end:
   menu_displaylist_info_free(&info);

   return ret;

error:
   menu_displaylist_info_free(&info);
   return 0;
}
