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
typedef  TYPE_1__* proc_t ;
struct TYPE_5__ {scalar_t__ p_signalholder; int p_lflag; int /*<<< orphan*/  p_sigwaitcnt; int /*<<< orphan*/  p_mlock; int /*<<< orphan*/  p_sigmask; } ;

/* Variables and functions */
 int P_LINSIGNAL ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(proc_t p, int locked)
{
	if (!locked)
		FUNC3(p);
	
	if(p->p_signalholder == FUNC0())
		FUNC2("proc_signalstart: thread attempting to signal a process for which it holds the signal lock");	
	
	p->p_sigwaitcnt++;
	while ((p->p_lflag & P_LINSIGNAL) == P_LINSIGNAL)
		FUNC1(&p->p_sigmask, &p->p_mlock, 0, "proc_signstart", NULL);
	p->p_sigwaitcnt--;

	p->p_lflag |= P_LINSIGNAL;
	p->p_signalholder = FUNC0();
	if (!locked)
		FUNC4(p);
}