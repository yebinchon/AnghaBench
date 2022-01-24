#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  content_icon; int /*<<< orphan*/  icon; } ;
typedef  TYPE_1__ ozone_node_t ;
struct TYPE_6__ {int /*<<< orphan*/  horizontal_list; } ;
typedef  TYPE_2__ ozone_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 size_t FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(ozone_handle_t *ozone)
{
   unsigned i;
   size_t list_size = FUNC2(ozone, MENU_LIST_HORIZONTAL);

   for (i = 0; i < list_size; i++)
   {
      const char *path = NULL;
      ozone_node_t *node = (ozone_node_t*)FUNC1(ozone->horizontal_list, i);

      if (!node)
         continue;

      FUNC0(ozone->horizontal_list, i,
            &path, NULL, NULL, NULL);

      if (!path || !FUNC3(path, ".lpl"))
         continue;

      FUNC4(&node->icon);
      FUNC4(&node->content_icon);
   }
}