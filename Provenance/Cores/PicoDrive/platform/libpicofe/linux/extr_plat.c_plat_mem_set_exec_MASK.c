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
 int PROT_EXEC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,size_t,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC2(void *ptr, size_t size)
{
	int ret = FUNC1(ptr, size, PROT_READ | PROT_WRITE | PROT_EXEC);
	if (ret != 0)
		FUNC0(stderr, "mprotect(%p, %zd) failed: %d\n",
			ptr, size, errno);

	return ret;
}