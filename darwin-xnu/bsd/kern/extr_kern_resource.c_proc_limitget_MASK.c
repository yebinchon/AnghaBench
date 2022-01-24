#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rlimit {int /*<<< orphan*/  rlim_max; int /*<<< orphan*/  rlim_cur; } ;
typedef  TYPE_2__* proc_t ;
struct TYPE_5__ {TYPE_1__* p_rlimit; } ;
struct TYPE_4__ {int /*<<< orphan*/  rlim_max; int /*<<< orphan*/  rlim_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(proc_t p, int which, struct rlimit * limp)
{
	FUNC0();
	limp->rlim_cur = p->p_rlimit[which].rlim_cur;
	limp->rlim_max = p->p_rlimit[which].rlim_max;
	FUNC1();
}