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
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ host_t ;
typedef  int /*<<< orphan*/  host_info64_t ;
typedef  int /*<<< orphan*/  host_flavor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HOST_NULL ; 
 scalar_t__ KERN_INVALID_HOST ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int*) ; 

kern_return_t
FUNC3(host_t host, host_flavor_t flavor, host_info64_t info, mach_msg_type_number_t * count)
{
	kern_return_t ret = KERN_SUCCESS;
	int index;

	if (host == HOST_NULL)
		return (KERN_INVALID_HOST);

	if (FUNC2(FALSE, flavor, info, count, &ret, &index))
		return ret;

	if (ret != KERN_SUCCESS)
		return ret;

	ret = FUNC1(host, flavor, info, count);

	if (ret == KERN_SUCCESS)
		FUNC0(index, info);

	return ret;
}