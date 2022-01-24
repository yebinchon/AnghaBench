#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
#define  GP2X_DEV_CAANOO 130 
#define  GP2X_DEV_GP2X 129 
#define  GP2X_DEV_WIZ 128 
 int gp2x_dev_id ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	FUNC3();

	switch (gp2x_dev_id) {
	case GP2X_DEV_GP2X:
		FUNC0();
		FUNC1();
		break;
	case GP2X_DEV_WIZ:
	case GP2X_DEV_CAANOO:
		FUNC2();
		break;
	}
}