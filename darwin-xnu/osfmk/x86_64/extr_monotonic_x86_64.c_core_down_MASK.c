#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cpu_monotonic; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GLOBAL_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  mt_core_supported ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(cpu_data_t *cpu)
{
	if (!mt_core_supported) {
		return;
	}

	FUNC0(FUNC1() == FALSE);

	FUNC3(GLOBAL_CTRL, 0);
	FUNC2(&cpu->cpu_monotonic, NULL, NULL);
}