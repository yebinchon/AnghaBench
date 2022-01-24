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
struct TYPE_5__ {int /*<<< orphan*/  enable; } ;
union monotonic_ctl_enable {TYPE_1__ in; } ;
typedef  TYPE_2__* mt_device_t ;
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_6__ {int /*<<< orphan*/  (* mtd_enable ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,union monotonic_ctl_enable*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(mt_device_t dev, user_addr_t uptr)
{
	int error;
	union monotonic_ctl_enable ctl;

	FUNC1(dev);

	error = FUNC0(uptr, &ctl, sizeof(ctl));
	if (error) {
		return error;
	}

	dev->mtd_enable(ctl.in.enable);

	return 0;
}