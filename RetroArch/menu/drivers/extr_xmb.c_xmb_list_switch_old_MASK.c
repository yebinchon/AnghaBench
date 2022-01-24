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
struct TYPE_6__ {float alpha; float label_alpha; float x; } ;
typedef  TYPE_1__ xmb_node_t ;
struct TYPE_7__ {int icon_spacing_horizontal; } ;
typedef  TYPE_2__ xmb_handle_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned int,size_t,unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,uintptr_t,float,float) ; 

__attribute__((used)) static void FUNC5(xmb_handle_t *xmb,
      file_list_t *list, int dir, size_t current)
{
   unsigned i, height;
   size_t end          = FUNC0(list);
   float ix            = -xmb->icon_spacing_horizontal * dir;
   float ia            = 0;
   unsigned first      = 0;
   unsigned last       = (unsigned)(end > 0 ? end - 1 : 0);

   FUNC2(NULL, &height);
   FUNC3(xmb, height, end,
         (unsigned)current, &first, &last);

   for (i = 0; i < end; i++)
   {
      xmb_node_t *node = (xmb_node_t*)
         FUNC1(list, i);

      if (!node)
         continue;

      if (i >= first && i <= last)
         FUNC4(node, (uintptr_t)list, ia, ix);
      else
      {
         node->alpha = node->label_alpha = ia;
         node->x     = ix;
      }
   }
}