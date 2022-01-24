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
typedef  TYPE_1__* proc_t ;
struct TYPE_3__ {int p_memstat_dirty; } ;

/* Variables and functions */
 int P_DIRTY_IS_DIRTY ; 
 int P_DIRTY_TERMINATED ; 
 int P_DIRTY_TRACK ; 
 int SIGKILL ; 
 int SIGTERM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

int
FUNC2(proc_t p) {
	int sig;
    
	FUNC0();
	
	p->p_memstat_dirty |= P_DIRTY_TERMINATED;
	
	if ((p->p_memstat_dirty & (P_DIRTY_TRACK|P_DIRTY_IS_DIRTY)) == P_DIRTY_TRACK) {
		/* Clean; mark as terminated and issue SIGKILL */
		sig = SIGKILL;
	} else {
		/* Dirty, terminated, or state tracking is unsupported; issue SIGTERM to allow cleanup */
		sig = SIGTERM;
	}

	FUNC1();
	
	return sig;
}