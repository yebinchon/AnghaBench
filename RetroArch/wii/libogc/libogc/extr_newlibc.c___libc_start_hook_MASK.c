#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _reent {int dummy; } ;
struct TYPE_4__ {struct _reent* libc_reent; } ;
typedef  TYPE_1__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _reent*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int,int) ; 

int FUNC3(lwp_cntrl *curr_thr,lwp_cntrl *start_thr)
{
	struct _reent *ptr;

	ptr = (struct _reent*)FUNC2(1,sizeof(struct _reent));
	if(!ptr) FUNC1();

	FUNC0((ptr));

	start_thr->libc_reent = ptr;
	return 1;
}