#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
struct TYPE_12__ {int p_lflag; int p_pid; char* p_comm; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int ESRCH ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* PROC_NULL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int P_LVMRSRCOWNER ; 
#define  P_PCKILL 130 
#define  P_PCSUSP 129 
#define  P_PCTHROTTLE 128 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(int pid)
{
	proc_t p;
	int pcontrol;
	int error;
	proc_t self = FUNC4();

	/* if the process has been validated to handle resource control or root is valid one */
	if (((self->p_lflag & P_LVMRSRCOWNER) == 0) && (error = FUNC11(FUNC5(), 0)))
		return error;

	p = FUNC7(pid);
	if (p == PROC_NULL)
		return(ESRCH);
	
	FUNC8(p);

	pcontrol = FUNC1(p);

	if(FUNC0(p) !=0) {
		switch(pcontrol) {
			case P_PCTHROTTLE:
				FUNC2(p);
				FUNC10(p);
				FUNC6("low swap: unthrottling pid %d (%s)\n", p->p_pid, p->p_comm);
				break;

			case P_PCSUSP:
				FUNC2(p);
				FUNC10(p);
				FUNC6("low swap: resuming pid %d (%s)\n", p->p_pid, p->p_comm);
				FUNC12(p->task);
				break;

			case P_PCKILL:
				/* Huh? */
				FUNC3(p);
				FUNC10(p);
				FUNC6("low swap: attempt to unkill pid %d (%s) ignored\n", p->p_pid, p->p_comm);
				break;

			default:
				FUNC10(p);
		}

	} else 
		FUNC10(p);

	FUNC9(p);
	return(0);
}