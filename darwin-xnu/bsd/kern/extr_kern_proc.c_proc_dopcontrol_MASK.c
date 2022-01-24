#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
struct TYPE_9__ {int p_pid; char* p_comm; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int PROC_RETURNED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
#define  P_PCKILL 130 
#define  P_PCSUSP 129 
#define  P_PCTHROTTLE 128 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(proc_t p)
{
	int pcontrol;

	FUNC4(p);

	pcontrol = FUNC1(p);

	if (FUNC0(p) == 0) {
		switch(pcontrol) {
			case P_PCTHROTTLE:
				FUNC2(p);
				FUNC5(p);
				FUNC3("low swap: throttling pid %d (%s)\n", p->p_pid, p->p_comm);
				break;

			case P_PCSUSP:
				FUNC2(p);
				FUNC5(p);
				FUNC3("low swap: suspending pid %d (%s)\n", p->p_pid, p->p_comm);
				FUNC7(p->task);
				break;

			case P_PCKILL:
				FUNC2(p);
				FUNC5(p);
				FUNC3("low swap: killing pid %d (%s)\n", p->p_pid, p->p_comm);
				FUNC6(p, SIGKILL);
				break;

			default:
				FUNC5(p);
		}

	} else 
		FUNC5(p);

	return(PROC_RETURNED);
}