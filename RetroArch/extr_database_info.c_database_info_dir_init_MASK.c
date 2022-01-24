#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct string_list {int dummy; } ;
typedef  int /*<<< orphan*/  retro_task_t ;
typedef  enum database_type { ____Placeholder_database_type } database_type ;
struct TYPE_6__ {int type; int /*<<< orphan*/  status; scalar_t__ list_ptr; struct string_list* list; } ;
typedef  TYPE_1__ database_info_handle_t ;
struct TYPE_7__ {int /*<<< orphan*/ * all_ext; } ;
typedef  TYPE_2__ core_info_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATABASE_STATUS_ITERATE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 struct string_list* FUNC2 (char const*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

database_info_handle_t *FUNC5(const char *dir,
      enum database_type type, retro_task_t *task,
      bool show_hidden_files)
{
   core_info_list_t *core_info_list = NULL;
   struct string_list       *list   = NULL;
   database_info_handle_t     *db   = (database_info_handle_t*)
      FUNC0(1, sizeof(*db));

   if (!db)
      return NULL;

   FUNC1(&core_info_list);

   list = FUNC2(dir, core_info_list ? core_info_list->all_ext : NULL,
         false, show_hidden_files,
         false, true);

   if (!list)
   {
      FUNC4(db);
      return NULL;
   }

   FUNC3(list);

   db->list           = list;
   db->list_ptr       = 0;
   db->status         = DATABASE_STATUS_ITERATE;
   db->type           = type;

   return db;
}