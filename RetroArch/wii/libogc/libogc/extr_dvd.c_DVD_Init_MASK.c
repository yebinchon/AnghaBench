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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_PI_DI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  __DVDInterruptHandler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int __dvd_initflag ; 
 int /*<<< orphan*/  __dvd_timeoutalarm ; 
 int /*<<< orphan*/  __dvd_wait_queue ; 

void FUNC7()
{
	if(!__dvd_initflag) {
		__dvd_initflag = 1;
		FUNC6();
		FUNC4();

		FUNC1(IRQ_PI_DI,__DVDInterruptHandler,NULL);
		FUNC5(FUNC0(IRQ_PI_DI));

		FUNC3(&__dvd_timeoutalarm);
		FUNC2(&__dvd_wait_queue);
	}
}