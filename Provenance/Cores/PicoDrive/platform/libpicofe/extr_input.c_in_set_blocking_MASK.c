#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* set_config ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  drv_data; int /*<<< orphan*/  drv_id; int /*<<< orphan*/  probed; } ;

/* Variables and functions */
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IN_CFG_BLOCKING ; 
 int in_dev_count ; 
 TYPE_1__* in_devices ; 
 int /*<<< orphan*/  in_have_async_devs ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ menu_key_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(int is_blocking)
{
	int i, ret;

	/* have_async_devs means we will have to do all reads async anyway.. */
	if (!in_have_async_devs) {
		for (i = 0; i < in_dev_count; i++) {
			if (!in_devices[i].probed)
				continue;

			FUNC0(in_devices[i].drv_id).set_config(
				in_devices[i].drv_data, IN_CFG_BLOCKING,
				is_blocking);
		}
	}

	menu_key_state = 0;

	/* flush events */
	do {
		ret = FUNC1(NULL, NULL, NULL, 0);
	} while (ret >= 0);

	return 0;
}