#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ (* action_deferred_push ) (TYPE_2__*) ;} ;
typedef  TYPE_1__ menu_file_list_cbs_t ;
struct TYPE_13__ {unsigned int type; int enum_idx; int /*<<< orphan*/  list; void* label; void* path; int /*<<< orphan*/  menu_list; } ;
typedef  TYPE_2__ menu_displaylist_info_t ;
struct TYPE_14__ {int /*<<< orphan*/  stack; int /*<<< orphan*/  list; } ;
typedef  TYPE_3__ menu_displaylist_ctx_entry_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;

/* Variables and functions */
 int MSG_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (char const*,TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const**,unsigned int*,int*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 () ; 
 void* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 

bool FUNC9(menu_displaylist_ctx_entry_t *entry)
{
   menu_displaylist_info_t info;
   menu_file_list_cbs_t *cbs      = NULL;
   const char *path               = NULL;
   const char *label              = NULL;
   unsigned type                  = 0;
   bool ret                       = false;
   enum msg_hash_enums enum_idx   = MSG_UNKNOWN;

   if (!entry)
      return false;

   FUNC1(&info);

   FUNC4(&path, &label, &type, &enum_idx, NULL);

   info.list      = entry->list;
   info.menu_list = entry->stack;
   info.type      = type;
   info.enum_idx  = enum_idx;

   if (!FUNC7(path))
      info.path  = FUNC6(path);

   if (!FUNC7(label))
      info.label = FUNC6(label);

   if (!info.list)
      goto error;

   if (FUNC3(label, entry, &info))
   {
      ret = FUNC2(&info);
      goto end;
   }

   cbs = FUNC5();

   if (cbs && cbs->action_deferred_push)
   {
      if (cbs->action_deferred_push(&info) != 0)
         goto error;
   }

   ret = true;

end:
   FUNC0(&info);

   return ret;

error:
   FUNC0(&info);
   return false;
}