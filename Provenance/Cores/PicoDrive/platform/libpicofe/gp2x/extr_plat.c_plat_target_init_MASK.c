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
typedef  int gp2x_soc_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  GP2X_DEV_CAANOO ; 
 int /*<<< orphan*/  GP2X_DEV_GP2X ; 
 int /*<<< orphan*/  GP2X_DEV_WIZ ; 
#define  SOCID_MMSP2 129 
#define  SOCID_POLLUX 128 
 int default_cpu_clock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  gp2x_dev_id ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 

int FUNC6(void)
{
	gp2x_soc_t soc;
	FILE *f;

	soc = FUNC5();
	switch (soc)
	{
	case SOCID_MMSP2:
		FUNC2();
		default_cpu_clock = 200;
		gp2x_dev_id = GP2X_DEV_GP2X;
		break;
	case SOCID_POLLUX:
		FUNC3();
		default_cpu_clock = 533;
		f = FUNC1("/dev/accel", "rb");
		if (f) {
			FUNC4("detected Caanoo\n");
			gp2x_dev_id = GP2X_DEV_CAANOO;
			FUNC0(f);
		}
		else {
			FUNC4("detected Wiz\n");
			gp2x_dev_id = GP2X_DEV_WIZ;
		}
		break;
	default:
		FUNC4("could not recognize SoC.\n");
		break;
	}

	return 0;
}