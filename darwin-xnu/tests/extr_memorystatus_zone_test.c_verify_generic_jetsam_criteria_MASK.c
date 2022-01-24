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
struct TYPE_3__ {int /*<<< orphan*/  mzn_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  VME_ZONE ; 
 int /*<<< orphan*/  VMOBJECTS_ZONE ; 
 int /*<<< orphan*/  largest_zone_info ; 
 TYPE_1__ largest_zone_name ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static bool FUNC4(void)
{
	FUNC0("Largest zone info");
	FUNC1(&largest_zone_name, &largest_zone_info);

	/* If VM map entries is not the largest zone */
	if (FUNC2(largest_zone_name.mzn_name, VME_ZONE)) {
		/* If vm objects is the largest zone and the VM map entries zone had comparable # of elements, return false */
		if (!FUNC2(largest_zone_name.mzn_name, VMOBJECTS_ZONE) && FUNC3()) {
			return false;
		}
		return true;
	}
	return false;
}