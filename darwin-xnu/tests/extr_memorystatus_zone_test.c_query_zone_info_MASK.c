#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_5__ {int num_zones; TYPE_1__* zone_names; } ;
struct TYPE_4__ {int /*<<< orphan*/  mzn_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  T_QUIET ; 
 TYPE_3__ current_test ; 
 int /*<<< orphan*/  largest_zone_info ; 
 int /*<<< orphan*/  largest_zone_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * zone_info_array ; 

__attribute__((used)) static void FUNC6(void)
{
	int i;
	kern_return_t kr;
	static uint64_t num_calls = 0;

	for (i = 0; i < current_test.num_zones; i++) {
		kr = FUNC4(FUNC2(), current_test.zone_names[i], &(zone_info_array[i]));
		T_QUIET; FUNC0(kr, "mach_zone_info_for_zone(%s) returned %d [%s]", current_test.zone_names[i].mzn_name, kr, FUNC1(kr));
	}
	kr = FUNC3(FUNC2(), &largest_zone_name, &largest_zone_info);
	T_QUIET; FUNC0(kr, "mach_zone_info_for_largest_zone returned %d [%s]", kr, FUNC1(kr));

	num_calls++;
	if (num_calls % 10 != 0) {
		return;
	}

	/* Print out size and element count for zones relevant to the test */
	for (i = 0; i < current_test.num_zones; i++) {
		FUNC5(&(current_test.zone_names[i]), &(zone_info_array[i]));
	}
}