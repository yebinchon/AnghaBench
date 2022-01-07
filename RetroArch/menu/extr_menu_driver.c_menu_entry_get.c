
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int tmp ;
typedef int newpath ;
struct TYPE_14__ {char* action_sublabel_cache; scalar_t__ (* action_sublabel ) (TYPE_5__*,int ,unsigned int,char const*,char const*,char*,int) ;TYPE_2__* setting; int (* action_get_value ) (TYPE_5__*,int *,int ,unsigned int,char const*,char*,int,char const*,char*,int) ;int (* action_label ) (TYPE_5__*,int ,unsigned int,char const*,char const*,char*,int) ;int checked; int enum_idx; } ;
typedef TYPE_3__ menu_file_list_cbs_t ;
struct TYPE_15__ {int path_enabled; unsigned int idx; char* label; char* rich_label; char* value; char* password_value; char* sublabel; char* path; int type; scalar_t__ sublabel_enabled; scalar_t__ value_enabled; int spacing; scalar_t__ rich_label_enabled; int checked; int enum_idx; scalar_t__ label_enabled; int entry_idx; } ;
typedef TYPE_4__ menu_entry_t ;
struct TYPE_16__ {TYPE_1__* list; } ;
typedef TYPE_5__ file_list_t ;
struct TYPE_13__ {scalar_t__ enum_value_idx; int dont_use_enum_idx_representation; } ;
struct TYPE_12__ {char* path; char* label; scalar_t__ actiondata; int entry_idx; int type; } ;


 int MENU_SUBLABEL_MAX_LENGTH ;
 scalar_t__ MSG_UNKNOWN ;
 int menu_entries_get_last_stack (int *,char const**,int *,int *,int *) ;
 TYPE_5__* menu_entries_get_selection_buf_ptr_internal (size_t) ;
 scalar_t__ menu_entry_is_password (TYPE_4__*) ;
 char* msg_hash_to_str (scalar_t__) ;
 scalar_t__ string_is_empty (char const*) ;
 size_t strlcpy (char*,char const*,int) ;
 int stub1 (TYPE_5__*,int ,unsigned int,char const*,char const*,char*,int) ;
 int stub2 (TYPE_5__*,int *,int ,unsigned int,char const*,char*,int,char const*,char*,int) ;
 scalar_t__ stub3 (TYPE_5__*,int ,unsigned int,char const*,char const*,char*,int) ;

void menu_entry_get(menu_entry_t *entry, size_t stack_idx,
      size_t i, void *userdata, bool use_representation)
{
   char newpath[255];
   const char *path = ((void*)0);
   const char *entry_label = ((void*)0);
   menu_file_list_cbs_t *cbs = ((void*)0);
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr_internal(stack_idx);
   file_list_t *list = (userdata) ? (file_list_t*)userdata : selection_buf;
   bool path_enabled = entry->path_enabled;

   newpath[0] = '\0';

   if (!list)
      return;

   path = list->list[i].path;
   entry_label = list->list[i].label;
   entry->type = list->list[i].type;
   entry->entry_idx = list->list[i].entry_idx;

   cbs = (menu_file_list_cbs_t*)list->list[i].actiondata;
   entry->idx = (unsigned)i;

   if (entry->label_enabled && !string_is_empty(entry_label))
      strlcpy(entry->label, entry_label, sizeof(entry->label));

   if (cbs)
   {
      const char *label = ((void*)0);

      entry->enum_idx = cbs->enum_idx;
      entry->checked = cbs->checked;

      menu_entries_get_last_stack(((void*)0), &label, ((void*)0), ((void*)0), ((void*)0));

      if (entry->rich_label_enabled && cbs->action_label)
      {
         cbs->action_label(list,
               entry->type, (unsigned)i,
               label, path,
               entry->rich_label,
               sizeof(entry->rich_label));

         if (string_is_empty(entry->rich_label))
            path_enabled = 1;
      }

      if ((path_enabled || entry->value_enabled) &&
          cbs->action_get_value &&
          use_representation)
      {
         cbs->action_get_value(list,
               &entry->spacing, entry->type,
               (unsigned)i, label,
               entry->value,
               entry->value_enabled ? sizeof(entry->value) : 0,
               path,
               newpath,
               path_enabled ? sizeof(newpath) : 0);

         if (!string_is_empty(entry->value))
         {
            if (menu_entry_is_password(entry))
            {
               size_t size, i;
               size = strlcpy(entry->password_value, entry->value,
                     sizeof(entry->password_value));
               for (i = 0; i < size; i++)
                  entry->password_value[i] = '*';
            }
         }
      }

      if (entry->sublabel_enabled)
      {
         if (!string_is_empty(cbs->action_sublabel_cache))
            strlcpy(entry->sublabel,
                     cbs->action_sublabel_cache, sizeof(entry->sublabel));
         else if (cbs->action_sublabel)
         {
            char tmp[MENU_SUBLABEL_MAX_LENGTH];
            tmp[0] = '\0';

            if (cbs->action_sublabel(list,
                     entry->type, (unsigned)i,
                     label, path,
                     tmp,
                     sizeof(tmp)) > 0)
            {



               strlcpy(cbs->action_sublabel_cache,
                     tmp, sizeof(cbs->action_sublabel_cache));
            }

            strlcpy(entry->sublabel, tmp, sizeof(entry->sublabel));
         }
      }
   }

   if (path_enabled)
   {
      if (!string_is_empty(path) && !use_representation)
         strlcpy(newpath, path, sizeof(newpath));
      else if (cbs && cbs->setting && cbs->setting->enum_value_idx != MSG_UNKNOWN
            && !cbs->setting->dont_use_enum_idx_representation)
         strlcpy(newpath,
               msg_hash_to_str(cbs->setting->enum_value_idx),
               sizeof(newpath));

      if (!string_is_empty(newpath))
         strlcpy(entry->path, newpath, sizeof(entry->path));
   }
}
