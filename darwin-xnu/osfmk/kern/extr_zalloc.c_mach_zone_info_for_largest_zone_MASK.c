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
typedef  int /*<<< orphan*/  mach_zone_name_t ;
typedef  int /*<<< orphan*/  mach_zone_info_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ host_priv_t ;

/* Variables and functions */
 scalar_t__ HOST_NULL ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_INVALID_HOST ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

kern_return_t
FUNC3(
	host_priv_t			host,
	mach_zone_name_t	*namep,
	mach_zone_info_t	*infop)
{
	if (host == HOST_NULL)
		return KERN_INVALID_HOST;
#if CONFIG_DEBUGGER_FOR_ZONE_INFO
	if (!PE_i_can_has_debugger(NULL))
		return KERN_INVALID_HOST;
#endif

	if (namep == NULL || infop == NULL) {
		return KERN_INVALID_ARGUMENT;
	}

	if (FUNC1(FUNC2(), namep, infop)) {
		return KERN_SUCCESS;
	}
	return KERN_FAILURE;
}