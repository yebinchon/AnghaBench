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
struct domain {int dom_flags; TYPE_1__* dom_old; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dom_init ) () ;} ;

/* Variables and functions */
 int DOM_OLD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(struct domain *dp)
{
	FUNC0(dp->dom_flags & DOM_OLD);
	FUNC0(dp->dom_old != NULL);

	if (dp->dom_old->dom_init != NULL)
		dp->dom_old->dom_init();
}