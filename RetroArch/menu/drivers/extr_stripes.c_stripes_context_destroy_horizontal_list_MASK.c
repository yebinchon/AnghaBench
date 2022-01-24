#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  content_icon; int /*<<< orphan*/  icon; } ;
typedef  TYPE_1__ stripes_node_t ;
struct TYPE_8__ {int /*<<< orphan*/  horizontal_list; } ;
typedef  TYPE_2__ stripes_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,unsigned int) ; 
 size_t FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(stripes_handle_t *stripes)
{
   unsigned i;
   size_t list_size = FUNC2(stripes, MENU_LIST_HORIZONTAL);

   for (i = 0; i < list_size; i++)
   {
      const char *path = NULL;
      stripes_node_t *node = FUNC1(stripes, i);

      if (!node)
         continue;

      FUNC0(stripes->horizontal_list, i,
            &path, NULL, NULL, NULL);

      if (!path || !FUNC3(path, ".lpl"))
         continue;

      FUNC4(&node->icon);
      FUNC4(&node->content_icon);
   }
}