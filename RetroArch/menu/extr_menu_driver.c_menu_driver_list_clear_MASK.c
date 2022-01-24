#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  file_list_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* list_clear ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 TYPE_1__* menu_driver_ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

bool FUNC1(file_list_t *list)
{
   if (!list)
      return false;
   if (menu_driver_ctx->list_clear)
      menu_driver_ctx->list_clear(list);
   return true;
}