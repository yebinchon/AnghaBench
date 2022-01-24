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
struct TYPE_2__ {int /*<<< orphan*/  step_volume; int /*<<< orphan*/  gamma_set; int /*<<< orphan*/  lcdrate_set; int /*<<< orphan*/  cpu_clock_set; int /*<<< orphan*/  cpu_clock_get; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gp2x_get_ticks_ms ; 
 int /*<<< orphan*/  gp2x_get_ticks_us ; 
 int /*<<< orphan*/  lcd_rate_defaults ; 
 int memdev ; 
 unsigned int volatile* memregl ; 
 int* memregs ; 
 int* memtimex_old ; 
 int mixerdev ; 
 int* FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  mmsp2_clock_get ; 
 int /*<<< orphan*/  mmsp2_clock_set ; 
 int /*<<< orphan*/  mmsp2_gamma_set ; 
 int /*<<< orphan*/  mmsp2_lcdrate_set ; 
 void* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  plat_get_ticks_ms_good ; 
 int /*<<< orphan*/  plat_get_ticks_us_good ; 
 TYPE_1__ plat_target ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int reg0910 ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ sndout_oss_can_restart ; 
 int /*<<< orphan*/  step_volume ; 
 int /*<<< orphan*/ * touchcal ; 
 scalar_t__ touchdev ; 

void FUNC11(void)
{
  	memdev = FUNC6("/dev/mem", O_RDWR);
	if (memdev == -1)
	{
		FUNC7("open(\"/dev/mem\")");
		FUNC0(1);
	}

	memregs = FUNC5(0, 0x10000, PROT_READ|PROT_WRITE, MAP_SHARED, memdev, 0xc0000000);
	if (memregs == MAP_FAILED)
	{
		FUNC7("mmap(memregs)");
		FUNC0(1);
	}
	memregl = (volatile unsigned int *) memregs;

	memregs[0x2880>>1] &= ~0x383; // disable cursor, subpict, osd, video layers

	/* save startup values: LCD refresh */
	FUNC4(lcd_rate_defaults);

	/* CPU and RAM timings */
	reg0910 = memregs[0x0910>>1];
	memtimex_old[0] = memregs[0x3802>>1];
	memtimex_old[1] = memregs[0x3804>>1];

	/* touchscreen */
	touchdev = FUNC6("/dev/touchscreen/wm97xx", O_RDONLY);
	if (touchdev >= 0) {
		FILE *pcf = FUNC2("/etc/pointercal", "r");
		if (pcf) {
			FUNC3(pcf, "%d %d %d %d %d %d %d", &touchcal[0], &touchcal[1],
				&touchcal[2], &touchcal[3], &touchcal[4], &touchcal[5], &touchcal[6]);
			FUNC1(pcf);
		}
		FUNC8("found touchscreen/wm97xx\n");
	}

	/* disable Linux read-ahead */
	FUNC9("/proc/sys/vm/max-readahead", "0\n");
	FUNC9("/proc/sys/vm/min-readahead", "0\n");

	mixerdev = FUNC6("/dev/mixer", O_RDWR);
	if (mixerdev == -1)
		FUNC7("open(/dev/mixer)");

	FUNC10();

	plat_target.cpu_clock_get = mmsp2_clock_get;
	plat_target.cpu_clock_set = mmsp2_clock_set;
	plat_target.lcdrate_set = mmsp2_lcdrate_set;
	plat_target.gamma_set = mmsp2_gamma_set;
	plat_target.step_volume = step_volume;

	gp2x_get_ticks_ms = plat_get_ticks_ms_good;
	gp2x_get_ticks_us = plat_get_ticks_us_good;

	sndout_oss_can_restart = 0;
}