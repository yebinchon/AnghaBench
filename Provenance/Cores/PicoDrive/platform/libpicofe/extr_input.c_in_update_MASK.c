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
struct TYPE_4__ {int /*<<< orphan*/ * binds; int /*<<< orphan*/  drv_data; int /*<<< orphan*/  drv_id; scalar_t__ probed; } ;
typedef  TYPE_1__ in_dev_t ;
struct TYPE_5__ {int (* update ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ;} ;

/* Variables and functions */
 TYPE_3__ FUNC0 (int /*<<< orphan*/ ) ; 
 int in_dev_count ; 
 TYPE_1__* in_devices ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

int FUNC2(int *result)
{
	int i, ret = 0;

	for (i = 0; i < in_dev_count; i++) {
		in_dev_t *dev = &in_devices[i];
		if (dev->probed && dev->binds != NULL)
			ret |= FUNC0(dev->drv_id).update(dev->drv_data, dev->binds, result);
	}

	return ret;
}