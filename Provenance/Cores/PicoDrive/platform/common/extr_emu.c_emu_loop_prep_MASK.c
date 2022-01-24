#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pal; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {scalar_t__ CPUclock; int filter; int /*<<< orphan*/  gamma; } ;

/* Variables and functions */
 TYPE_3__ Pico ; 
 TYPE_2__ currentConfig ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
	static int pal_old = -1;
	static int filter_old = -1;

	if (currentConfig.CPUclock != FUNC1())
		FUNC2(currentConfig.CPUclock);

	if (Pico.m.pal != pal_old) {
		FUNC5(Pico.m.pal);
		pal_old = Pico.m.pal;
	}

	if (currentConfig.filter != filter_old) {
		FUNC4(currentConfig.filter);
		filter_old = currentConfig.filter;
	}

	FUNC3(currentConfig.gamma, 0);

	FUNC0();
}