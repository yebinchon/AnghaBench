#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  mzi_collectable; } ;
typedef  TYPE_1__ mach_zone_info_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_zones_lock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ num_zones ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * zone_array ; 

uint64_t
FUNC4(void)
{
	unsigned int i, max_zones;
	uint64_t zones_collectable_bytes = 0;
	mach_zone_info_t zi;

	FUNC2(&all_zones_lock);
	max_zones = (unsigned int)(num_zones);
	FUNC3(&all_zones_lock);

	for (i = 0; i < max_zones; i++) {
		if (FUNC1(&(zone_array[i]), NULL, &zi)) {
			zones_collectable_bytes += FUNC0(zi.mzi_collectable);
		}
	}

	return zones_collectable_bytes;
}