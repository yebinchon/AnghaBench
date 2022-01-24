#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ categories_selection_ptr; scalar_t__ system_tab_end; int /*<<< orphan*/  title_name; int /*<<< orphan*/  horizontal_list; } ;
typedef  TYPE_1__ xmb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(xmb_handle_t *xmb)
{
   if (xmb->categories_selection_ptr <= xmb->system_tab_end)
      FUNC2(xmb->title_name, sizeof(xmb->title_name));
   else
   {
      const char *path = NULL;
      FUNC1(
            xmb->horizontal_list,
            xmb->categories_selection_ptr - (xmb->system_tab_end + 1),
            &path, NULL, NULL, NULL, NULL);

      if (!path)
         return;

      FUNC0(
            xmb->title_name, path, sizeof(xmb->title_name));
   }
}