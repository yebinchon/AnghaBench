#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ current_rate; scalar_t__ current_size; int /*<<< orphan*/  num_rates; int /*<<< orphan*/  dpy; int /*<<< orphan*/  rates; int /*<<< orphan*/  num_sizes; int /*<<< orphan*/  xrrs; } ;
typedef  TYPE_1__ X11ResolutionList ;
typedef  TYPE_1__* ResolutionList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int) ; 

ResolutionList FUNC4()
{
   X11ResolutionList * list;

   list = FUNC3(sizeof(X11ResolutionList));

   list->dpy = FUNC0(NULL);
   list->xrrs = FUNC2(list->dpy, 0, &list->num_sizes);
   list->rates = FUNC1(list->dpy, 0, 0, &list->num_rates);
   list->current_size = 0;
   list->current_rate = 0;

   return list;
}