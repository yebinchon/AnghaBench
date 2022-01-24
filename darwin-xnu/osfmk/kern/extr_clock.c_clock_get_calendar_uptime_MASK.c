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
struct bintime {int /*<<< orphan*/  sec; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  clock_sec_t ;
struct TYPE_2__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bintime*,int /*<<< orphan*/ *) ; 
 TYPE_1__ clock_calend ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct bintime FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(clock_sec_t *secs)
{
	uint64_t now;
	spl_t s;
	struct bintime bt;

	s = FUNC5();
	FUNC1();

	now = FUNC4();

	bt = FUNC3(now);
	FUNC0(&bt, &clock_calend.offset);

	*secs = bt.sec;

	FUNC2();
	FUNC6(s);
}