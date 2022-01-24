#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  keybits ;
struct TYPE_2__ {scalar_t__ abs_lzone; scalar_t__ abs_to_digital; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ in_evdev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EV_KEY ; 
 int IN_BINDTYPE_COUNT ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int KEY_CNT ; 
 int /*<<< orphan*/  KEY_DOWN ; 
 int /*<<< orphan*/  KEY_LEFT ; 
 int /*<<< orphan*/  KEY_RIGHT ; 
 int /*<<< orphan*/  KEY_UP ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(void *drv_data, int *binds, int *def_binds)
{
	int keybits[KEY_CNT / sizeof(int)];
	in_evdev_t *dev = drv_data;
	int i, t, ret, offs, count = 0;

	FUNC5(keybits, 0, sizeof(keybits));
	ret = FUNC4(dev->fd, FUNC0(EV_KEY, sizeof(keybits)), keybits);
	if (ret == -1) {
		FUNC6("in_evdev: ioctl failed");
		// memset(keybits, 0xff, sizeof(keybits)); /* mark all as good */
	}

	if (dev->abs_to_digital && dev->abs_lzone != 0) {
		FUNC3(KEY_LEFT);
		FUNC3(KEY_RIGHT);
		FUNC3(KEY_UP);
		FUNC3(KEY_DOWN);
	}

	for (i = 0; i < KEY_CNT; i++) {
		for (t = 0; t < IN_BINDTYPE_COUNT; t++) {
			offs = FUNC1(i, t);
			if (!FUNC2(i))
				binds[offs] = def_binds[offs] = 0;
			if (binds[offs])
				count++;
		}
	}

	return count;
}