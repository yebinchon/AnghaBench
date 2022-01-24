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
typedef  int /*<<< orphan*/  thread_t ;
struct uthread {int uu_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int UT_CANCEL ; 
 int UT_CANCELDISABLE ; 
 int UT_CANCELED ; 
 int UT_NOTCANCELPT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(int presyscall)
{

	thread_t self = FUNC0();
	struct uthread * uthread;

	uthread = (struct uthread *)FUNC1(self);

	
	uthread->uu_flag &= ~UT_NOTCANCELPT;

	if ((uthread->uu_flag & (UT_CANCELDISABLE | UT_CANCEL | UT_CANCELED)) == UT_CANCEL) {
		if(presyscall != 0) {
			FUNC3(EINTR);
			/* NOTREACHED */
		} else 
			FUNC2(self);
	}
}