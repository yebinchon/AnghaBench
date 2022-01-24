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
struct TYPE_3__ {int state; int o_bind; int i_bind; int i_mask; int i_raw; int components_count; int /*<<< orphan*/ * components; int /*<<< orphan*/  render_bounds; int /*<<< orphan*/  bounds; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ element_t ;
typedef  int /*<<< orphan*/  component_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(element_t *elem, const char *name, int components_count)
{
   elem->name   = FUNC1(name);
   elem->state  = -1;
   elem->o_bind = -1;
   elem->i_bind = -1;
   elem->i_mask = -1;
   elem->i_raw  = false;

   elem->bounds = FUNC2();
   elem->render_bounds = FUNC3();

   elem->components = (component_t*)(components_count > 0 ?
         FUNC0(components_count, sizeof(component_t)) : NULL);
   elem->components_count = components_count;
}