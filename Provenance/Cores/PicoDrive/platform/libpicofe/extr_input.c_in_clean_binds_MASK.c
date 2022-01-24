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
struct TYPE_4__ {int* binds; int key_count; int /*<<< orphan*/  drv_data; int /*<<< orphan*/  drv_id; int /*<<< orphan*/  probed; } ;
typedef  TYPE_1__ in_dev_t ;
struct TYPE_5__ {int (* clean_binds ) (int /*<<< orphan*/ ,int*,int*) ;} ;

/* Variables and functions */
 TYPE_3__ FUNC0 (int /*<<< orphan*/ ) ; 
 int IN_BINDTYPE_COUNT ; 
 int IN_MAX_DEVS ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 TYPE_1__* in_devices ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 

void FUNC3(void)
{
	int i;

	for (i = 0; i < IN_MAX_DEVS; i++) {
		int ret, count, *binds, *def_binds;
		in_dev_t *dev = &in_devices[i];

		if (dev->binds == NULL || !dev->probed)
			continue;

		count = dev->key_count;
		binds = dev->binds;
		def_binds = binds + count * IN_BINDTYPE_COUNT;

		ret = FUNC0(dev->drv_id).clean_binds(dev->drv_data, binds, def_binds);
		if (ret == 0) {
			/* no useable binds */
			FUNC1(dev->binds);
			dev->binds = NULL;
		}
	}
}