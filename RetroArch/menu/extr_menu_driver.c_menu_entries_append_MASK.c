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
struct TYPE_12__ {int /*<<< orphan*/  setting; int /*<<< orphan*/  enum_idx; } ;
typedef  TYPE_1__ menu_file_list_cbs_t ;
struct TYPE_13__ {char const* path; char const* label; size_t idx; unsigned int entry_type; int /*<<< orphan*/ * fullpath; TYPE_3__* list; } ;
typedef  TYPE_2__ menu_ctx_list_t ;
struct TYPE_14__ {int size; } ;
typedef  TYPE_3__ file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_UNKNOWN ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char const*,char const*,unsigned int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

void FUNC11(file_list_t *list, const char *path, const char *label,
      unsigned type, size_t directory_ptr, size_t entry_idx)
{
   menu_ctx_list_t list_info;
   size_t idx;
   const char *menu_path           = NULL;
   menu_file_list_cbs_t *cbs       = NULL;
   if (!list || !label)
      return;

   FUNC1(list, path, label, type, directory_ptr, entry_idx);

   FUNC7(&menu_path, NULL, NULL, NULL, NULL);

   idx                = list->size - 1;

   list_info.list     = list;
   list_info.path     = path;
   list_info.fullpath = NULL;

   if (!FUNC10(menu_path))
      list_info.fullpath = FUNC9(menu_path);

   list_info.label       = label;
   list_info.idx         = idx;
   list_info.entry_type  = type;

   FUNC6(&list_info);

   if (list_info.fullpath)
      FUNC4(list_info.fullpath);

   FUNC2(list, idx);
   cbs = (menu_file_list_cbs_t*)
      FUNC0(1, sizeof(menu_file_list_cbs_t));

   if (!cbs)
      return;

   FUNC3(list, idx, cbs);

   cbs->enum_idx = MSG_UNKNOWN;
   cbs->setting  = FUNC8(label);

   FUNC5(list, cbs, path, label, type, idx);
}