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
struct TYPE_3__ {int key_count; int* binds; } ;
typedef  TYPE_1__ in_dev_t ;

/* Variables and functions */
 int IN_BINDTYPE_COUNT ; 
 size_t FUNC0 (int,int) ; 
 int IN_MAX_DEVS ; 
 TYPE_1__* in_devices ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

void FUNC2(int dev_id_, int act_mask, int bind_type)
{
	int dev_id = 0, dev_last = IN_MAX_DEVS - 1;
	int i, count;
	in_dev_t *dev;

	if (dev_id_ >= 0)
		dev_id = dev_last = dev_id_;

	if (bind_type >= IN_BINDTYPE_COUNT)
		return;

	for (; dev_id <= dev_last; dev_id++) {
		dev = &in_devices[dev_id];
		count = dev->key_count;

		if (dev->binds == NULL)
			continue;

		if (act_mask != -1) {
			for (i = 0; i < count; i++)
				dev->binds[FUNC0(i, bind_type)] &= ~act_mask;
		}
		else
			FUNC1(dev->binds, 0, sizeof(dev->binds[0]) * count * IN_BINDTYPE_COUNT);
	}
}