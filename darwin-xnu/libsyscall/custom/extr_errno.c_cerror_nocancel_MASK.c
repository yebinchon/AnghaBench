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
typedef  int cerror_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  __TSD_ERRNO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int errno ; 

__attribute__((noinline))
cerror_return_t
FUNC1(int err)
{
	errno = err;
	int *tsderrno = (int*)FUNC0(__TSD_ERRNO);
	if (tsderrno) {
		*tsderrno = err;
	}
	return -1;
}