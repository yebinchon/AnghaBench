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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  kd_threadmap ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int
FUNC3(user_addr_t buffer, size_t *bufsize)
{
	kd_threadmap *mapptr;
	unsigned int mapsize;
	unsigned int mapcount;
	unsigned int count = 0;
	int ret = 0;

	count = *bufsize/sizeof(kd_threadmap);
	*bufsize = 0;

	if ( (mapptr = FUNC1(count, &mapsize, &mapcount)) ) {
		if (FUNC0(mapptr, buffer, mapcount * sizeof(kd_threadmap)))
			ret = EFAULT;
		else
			*bufsize = (mapcount * sizeof(kd_threadmap));

		FUNC2(kernel_map, (vm_offset_t)mapptr, mapsize);
	} else
		ret = EINVAL;

	return (ret);
}