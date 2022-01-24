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
typedef  int /*<<< orphan*/  thread_t ;
struct uthread {int uu_siglist; int uu_sigmask; } ;
typedef  int sigset_t ;
typedef  TYPE_1__* proc_t ;
struct TYPE_5__ {int p_sigignore; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(proc_t p, thread_t th, sigset_t mask)
{
	struct uthread * uth;
	sigset_t  bits=0;

	FUNC1(p);
	uth = (struct uthread *)FUNC0(th);
	if (uth) {
		bits = (((uth->uu_siglist & ~uth->uu_sigmask) & ~p->p_sigignore) & mask);
	}
	FUNC2(p);
	return(bits);
}