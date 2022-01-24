#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  newpath ;
struct TYPE_14__ {char* action_sublabel_cache; scalar_t__ (* action_sublabel ) (TYPE_5__*,int /*<<< orphan*/ ,unsigned int,char const*,char const*,char*,int) ;TYPE_2__* setting; int /*<<< orphan*/  (* action_get_value ) (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,char const*,char*,int,char const*,char*,int) ;int /*<<< orphan*/  (* action_label ) (TYPE_5__*,int /*<<< orphan*/ ,unsigned int,char const*,char const*,char*,int) ;int /*<<< orphan*/  checked; int /*<<< orphan*/  enum_idx; } ;
typedef  TYPE_3__ menu_file_list_cbs_t ;
struct TYPE_15__ {int path_enabled; unsigned int idx; char* label; char* rich_label; char* value; char* password_value; char* sublabel; char* path; int /*<<< orphan*/  type; scalar_t__ sublabel_enabled; scalar_t__ value_enabled; int /*<<< orphan*/  spacing; scalar_t__ rich_label_enabled; int /*<<< orphan*/  checked; int /*<<< orphan*/  enum_idx; scalar_t__ label_enabled; int /*<<< orphan*/  entry_idx; } ;
typedef  TYPE_4__ menu_entry_t ;
struct TYPE_16__ {TYPE_1__* list; } ;
typedef  TYPE_5__ file_list_t ;
struct TYPE_13__ {scalar_t__ enum_value_idx; int /*<<< orphan*/  dont_use_enum_idx_representation; } ;
struct TYPE_12__ {char* path; char* label; scalar_t__ actiondata; int /*<<< orphan*/  entry_idx; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int MENU_SUBLABEL_MAX_LENGTH ; 
 scalar_t__ MSG_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 
 size_t FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,unsigned int,char const*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,char const*,char*,int,char const*,char*,int) ; 
 scalar_t__ FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,unsigned int,char const*,char const*,char*,int) ; 

void FUNC9(menu_entry_t *entry, size_t stack_idx,
      size_t i, void *userdata, bool use_representation)
{
   char newpath[255];
   const char *path           = NULL;
   const char *entry_label    = NULL;
   menu_file_list_cbs_t *cbs  = NULL;
   file_list_t *selection_buf = FUNC1(stack_idx);
   file_list_t *list          = (userdata) ? (file_list_t*)userdata : selection_buf;
   bool path_enabled          = entry->path_enabled;

   newpath[0]                 = '\0';

   if (!list)
      return;

   path                       = list->list[i].path;
   entry_label                = list->list[i].label;
   entry->type                = list->list[i].type;
   entry->entry_idx           = list->list[i].entry_idx;

   cbs                        = (menu_file_list_cbs_t*)list->list[i].actiondata;
   entry->idx                 = (unsigned)i;

   if (entry->label_enabled && !FUNC4(entry_label))
      FUNC5(entry->label, entry_label, sizeof(entry->label));

   if (cbs)
   {
      const char *label             = NULL;

      entry->enum_idx               = cbs->enum_idx;
      entry->checked                = cbs->checked;

      FUNC0(NULL, &label, NULL, NULL, NULL);

      if (entry->rich_label_enabled && cbs->action_label)
      {
         cbs->action_label(list,
               entry->type, (unsigned)i,
               label, path,
               entry->rich_label,
               sizeof(entry->rich_label));

         if (FUNC4(entry->rich_label))
            path_enabled = true;
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

         if (!FUNC4(entry->value))
         {
            if (FUNC2(entry))
            {
               size_t size, i;
               size = FUNC5(entry->password_value, entry->value,
                     sizeof(entry->password_value));
               for (i = 0; i < size; i++)
                  entry->password_value[i] = '*';
            }
         }
      }

      if (entry->sublabel_enabled)
      {
         if (!FUNC4(cbs->action_sublabel_cache))
            FUNC5(entry->sublabel,
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
               /* If this function callback returns true,
                * we know that the value won't change - so we
                * can cache it instead. */
               FUNC5(cbs->action_sublabel_cache,
                     tmp, sizeof(cbs->action_sublabel_cache));
            }

            FUNC5(entry->sublabel, tmp, sizeof(entry->sublabel));
         }
      }
   }

   if (path_enabled)
   {
      if (!FUNC4(path) && !use_representation)
         FUNC5(newpath, path, sizeof(newpath));
      else if (cbs && cbs->setting && cbs->setting->enum_value_idx != MSG_UNKNOWN
            && !cbs->setting->dont_use_enum_idx_representation)
         FUNC5(newpath,
               FUNC3(cbs->setting->enum_value_idx),
               sizeof(newpath));

      if (!FUNC4(newpath))
         FUNC5(entry->path, newpath, sizeof(entry->path));
   }
}