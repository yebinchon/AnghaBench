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
typedef  TYPE_2__* proc_t ;
struct TYPE_6__ {int /*<<< orphan*/ * p_olimit; TYPE_1__* p_limit; } ;
struct TYPE_5__ {int /*<<< orphan*/  pl_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(proc_t parent, proc_t child)
{
	FUNC0();
	child->p_limit = parent->p_limit;
	child->p_limit->pl_refcnt++;
	child->p_olimit = NULL;
	FUNC1();
}