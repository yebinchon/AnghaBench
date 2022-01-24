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
struct bintime {int dummy; } ;
typedef  int /*<<< orphan*/  clock_usec_t ;
typedef  int /*<<< orphan*/  clock_sec_t ;
struct TYPE_2__ {int /*<<< orphan*/  bintime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bintime*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bintime*,int /*<<< orphan*/ *) ; 
 TYPE_1__ clock_calend ; 
 struct bintime FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(
	clock_sec_t		*secs,
	clock_usec_t		*nanosecs,
	uint64_t    		*abstime)
{
	uint64_t now;
	struct bintime bt;

	now  = FUNC3();
	if (abstime)
		*abstime = now;

	bt = FUNC2(now);
	FUNC1(&bt, &clock_calend.bintime);
	FUNC0(&bt, secs, nanosecs);
}