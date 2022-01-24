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
typedef  TYPE_1__ xmb_node_t ;
struct TYPE_8__ {int /*<<< orphan*/  horizontal_list; } ;
typedef  TYPE_2__ xmb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,unsigned int) ; 
 size_t FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(xmb_handle_t *xmb)
{
   unsigned i;
   size_t list_size = FUNC4(xmb, MENU_LIST_HORIZONTAL);

   for (i = 0; i < list_size; i++)
   {
      const char *path = NULL;
      xmb_node_t *node = FUNC3(xmb, i);

      if (!node)
         continue;

      FUNC0(xmb->horizontal_list, i,
            &path, NULL, NULL, NULL);

      if (!path || !FUNC1(path, ".lpl"))
         continue;

      FUNC2(&node->icon);
      FUNC2(&node->content_icon);
   }
}