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
typedef  void* uint64_t ;
struct TYPE_4__ {void* cpu_frequency_max_hz; void* cpu_frequency_min_hz; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* rtc_config ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 TYPE_2__ gPEClockFrequencyInfo ; 
 scalar_t__ master_cpu ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int) ; 
 TYPE_1__* rtc_timer ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int tscFreq ; 

int
FUNC10(void)
{
	uint64_t	cycles;

	FUNC0(!FUNC3());

	if (FUNC2() == master_cpu) {

		FUNC0(tscFreq);

		/*
		 * Adjust and set the exported cpu speed.
		 */
		cycles = FUNC6(tscFreq);

		/*
		 * Set min/max to actual.
		 * ACPI may update these later if speed-stepping is detected.
		 */
		gPEClockFrequencyInfo.cpu_frequency_min_hz = cycles;
		gPEClockFrequencyInfo.cpu_frequency_max_hz = cycles;

		FUNC7();
		FUNC1();
		FUNC5();
		FUNC4(10);
	}

    	/* Set fixed configuration for lapic timers */
	rtc_timer->rtc_config();
	FUNC8();

	return (1);
}