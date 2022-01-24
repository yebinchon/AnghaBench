#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
struct TYPE_5__ {scalar_t__ ctr_mask; } ;
union monotonic_ctl_counts {TYPE_1__ in; } ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_2__* mt_device_t ;
typedef  int /*<<< orphan*/  counts ;
struct TYPE_6__ {int mtd_nmonitors; int mtd_ncounters; int (* mtd_read ) (scalar_t__,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,union monotonic_ctl_counts*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ***,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(mt_device_t dev, user_addr_t uptr)
{
	int error;
	union monotonic_ctl_counts ctl;

	FUNC3(dev);

	error = FUNC0(uptr, &ctl, sizeof(ctl.in));
	if (error) {
		return error;
	}

	if (ctl.in.ctr_mask == 0) {
		return EINVAL;
	}

	{
		uint64_t counts[dev->mtd_nmonitors][dev->mtd_ncounters];
		FUNC2(counts, 0,
				dev->mtd_ncounters * dev->mtd_nmonitors * sizeof(counts[0][0]));
		error = dev->mtd_read(ctl.in.ctr_mask, (uint64_t *)counts);
		if (error) {
			return error;
		}

		error = FUNC1(&counts, uptr, sizeof(counts));
		if (error) {
			return error;
		}
	}

	return 0;
}