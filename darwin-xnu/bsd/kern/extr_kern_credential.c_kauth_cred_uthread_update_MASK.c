#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uthread_t ;
typedef  TYPE_2__* proc_t ;
typedef  scalar_t__ kauth_cred_t ;
struct TYPE_7__ {scalar_t__ p_ucred; } ;
struct TYPE_6__ {scalar_t__ uu_ucred; int uu_flag; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int UT_SETUID ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 

void
FUNC3(uthread_t uthread, proc_t proc)
{
	if (uthread->uu_ucred != proc->p_ucred &&
	    (uthread->uu_flag & UT_SETUID) == 0) {
		kauth_cred_t old = uthread->uu_ucred;
		uthread->uu_ucred = FUNC1(proc);
		if (FUNC0(old))
			FUNC2(&old);
	}
}