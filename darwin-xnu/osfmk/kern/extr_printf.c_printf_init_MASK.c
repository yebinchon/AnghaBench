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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  bsd_log_spinlock ; 
 int /*<<< orphan*/  printf_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void

FUNC2(void)
{
	/*
	 * Lock is only really needed after the first thread is created.
	 */
	FUNC1(&printf_lock, 0);
	FUNC1(&bsd_log_spinlock, 0);
	FUNC0();
}