#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct proc {int /*<<< orphan*/  p_btrace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int pc_sample_pid ; 
 int /*<<< orphan*/  pc_trace_frameworks ; 
 struct proc* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 

int
FUNC3(void)
{
    struct proc *p;
    switch (pc_sample_pid) {
    case -1:
        pc_trace_frameworks = FALSE;
        break;
    case 0:
        break;
    default:
        p = FUNC1(pc_sample_pid);
        if (p) {
            p->p_btrace = 0;
			FUNC2(p);
        }
        break;
    }
    FUNC0();
    return 1;
}