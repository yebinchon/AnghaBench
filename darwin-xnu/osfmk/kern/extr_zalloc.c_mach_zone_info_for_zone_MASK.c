#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* zone_t ;
struct TYPE_8__ {int /*<<< orphan*/  mzn_name; } ;
typedef  TYPE_2__ mach_zone_name_t ;
typedef  int /*<<< orphan*/  mach_zone_info_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ host_priv_t ;
struct TYPE_7__ {int /*<<< orphan*/  zone_name; } ;

/* Variables and functions */
 scalar_t__ HOST_NULL ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_INVALID_HOST ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ZONE_NULL ; 
 int /*<<< orphan*/  all_zones_lock ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ num_zones ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* zone_array ; 

kern_return_t
FUNC6(
	host_priv_t			host,
	mach_zone_name_t	name,
	mach_zone_info_t	*infop)
{
	unsigned int max_zones, i;
	zone_t zone_ptr;

	if (host == HOST_NULL)
		return KERN_INVALID_HOST;
#if CONFIG_DEBUGGER_FOR_ZONE_INFO
	if (!PE_i_can_has_debugger(NULL))
		return KERN_INVALID_HOST;
#endif

	if (infop == NULL) {
		return KERN_INVALID_ARGUMENT;
	}

	FUNC3(&all_zones_lock);
	max_zones = (unsigned int)(num_zones);
	FUNC4(&all_zones_lock);

	zone_ptr = ZONE_NULL;
	for (i = 0; i < max_zones; i++) {
		zone_t z = &(zone_array[i]);
		FUNC1(z != ZONE_NULL);

		/* Find the requested zone by name */
		if (FUNC5(z->zone_name, name.mzn_name)) {
			zone_ptr = z;
			break;
		}
	}

	/* No zones found with the requested zone name */
	if (zone_ptr == ZONE_NULL) {
		return KERN_INVALID_ARGUMENT;
	}

	if (FUNC2(zone_ptr, NULL, infop)) {
		return KERN_SUCCESS;
	}
	return KERN_FAILURE;
}