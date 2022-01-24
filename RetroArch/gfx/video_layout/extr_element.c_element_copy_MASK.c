#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int components_count; int /*<<< orphan*/ * components; int /*<<< orphan*/  render_bounds; int /*<<< orphan*/  bounds; int /*<<< orphan*/  state; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ element_t ;
typedef  int /*<<< orphan*/  component_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(element_t *elem, const element_t *src)
{
   int i;

   elem->name = FUNC2(src->name);
   elem->state = src->state;

   elem->bounds = src->bounds;
   elem->render_bounds = src->render_bounds;

   elem->components = (component_t*)(src->components_count > 0 ?
         FUNC0(src->components_count, sizeof(component_t)) : NULL);

   for (i = 0; i < src->components_count; ++i)
      FUNC1(&elem->components[i], &src->components[i]);

   elem->components_count = src->components_count;
}