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
struct TYPE_3__ {scalar_t__ screens_count; int /*<<< orphan*/ * screens; scalar_t__ layers_count; int /*<<< orphan*/ * layers; int /*<<< orphan*/  render_bounds; int /*<<< orphan*/  bounds; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ view_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(view_t *view, const char *name)
{
   view->name          = FUNC0(name);
   view->bounds        = FUNC1();
   view->render_bounds = FUNC2();
   view->layers        = NULL;
   view->layers_count  = 0;
   view->screens       = NULL;
   view->screens_count = 0;
}