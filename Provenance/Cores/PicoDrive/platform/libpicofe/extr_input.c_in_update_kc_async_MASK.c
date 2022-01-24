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
struct TYPE_4__ {int /*<<< orphan*/  drv_data; int /*<<< orphan*/  drv_id; int /*<<< orphan*/  probed; } ;
typedef  TYPE_1__ in_dev_t ;
struct TYPE_5__ {int (* update_keycode ) (int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 TYPE_3__ FUNC0 (int /*<<< orphan*/ ) ; 
 int in_dev_count ; 
 TYPE_1__* in_devices ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(int *dev_id_out, int *is_down_out, int timeout_ms)
{
	int i, is_down, result;
	unsigned int ticks;

	ticks = FUNC1();

	while (1)
	{
		for (i = 0; i < in_dev_count; i++) {
			in_dev_t *d = &in_devices[i];
			if (!d->probed)
				continue;

			result = FUNC0(d->drv_id).update_keycode(d->drv_data, &is_down);
			if (result == -1)
				continue;

			if (dev_id_out)
				*dev_id_out = i;
			if (is_down_out)
				*is_down_out = is_down;
			return result;
		}

		if (timeout_ms >= 0 && (int)(FUNC1() - ticks) > timeout_ms)
			break;

		FUNC2(10);
	}

	return -1;
}