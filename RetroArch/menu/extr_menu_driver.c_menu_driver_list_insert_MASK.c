#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  entry_type; int /*<<< orphan*/  idx; int /*<<< orphan*/  label; int /*<<< orphan*/  fullpath; int /*<<< orphan*/  path; int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ menu_ctx_list_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* list_insert ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_3__* menu_driver_ctx ; 
 int /*<<< orphan*/  menu_userdata ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1(menu_ctx_list_t *list)
{
   if (!list || !menu_driver_ctx || !menu_driver_ctx->list_insert)
      return false;
   menu_driver_ctx->list_insert(menu_userdata,
         list->list, list->path, list->fullpath,
         list->label, list->idx, list->entry_type);

   return true;
}