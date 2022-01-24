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
typedef  int /*<<< orphan*/  uint64_t ;
struct bintime {int /*<<< orphan*/  frac; int /*<<< orphan*/  sec; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  clock_usec_t ;
typedef  int /*<<< orphan*/  clock_sec_t ;
struct TYPE_2__ {int /*<<< orphan*/  tick_scale_x; int /*<<< orphan*/  bintime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bintime*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bintime*,int /*<<< orphan*/ *) ; 
 TYPE_1__ clock_calend ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct bintime FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ticks_per_sec ; 

void
FUNC9(
	clock_sec_t	*secs,
	clock_usec_t	*microsecs,
	uint64_t	*mach_time)
{
	uint64_t		now;
	spl_t			s;
	struct bintime 	bt;

	s = FUNC7();
	FUNC3();

	now = FUNC6();
	bt = FUNC5(now);
	FUNC1(&bt, &clock_calend.bintime);
	FUNC0(&bt, secs, microsecs);

	FUNC2(now, bt.sec, bt.frac, clock_calend.tick_scale_x, ticks_per_sec);

	FUNC4();
	FUNC8(s);

	if (mach_time) {
		*mach_time = now;
	}
}