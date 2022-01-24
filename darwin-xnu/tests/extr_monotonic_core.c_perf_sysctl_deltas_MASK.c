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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dt_stat_t ;
typedef  int /*<<< orphan*/  deltas ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_SETUPBEGIN ; 
 int /*<<< orphan*/  T_SETUPEND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (char const*,scalar_t__*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const char *sysctl_name, const char *stat_name)
{
	uint64_t deltas[2];
	size_t deltas_size;
	int r;

	T_SETUPBEGIN;
	FUNC5();

	dt_stat_t instrs = FUNC2("instructions", "%s_instrs",
			stat_name);
	dt_stat_t cycles = FUNC2("cycles", "%s_cycles", stat_name);
	T_SETUPEND;

	while (!FUNC4(instrs) || !FUNC4(cycles)) {
		deltas_size = sizeof(deltas);
		r = FUNC6(sysctl_name, deltas, &deltas_size, NULL, 0);
		T_QUIET;
		FUNC0(r, "sysctlbyname(\"%s\", ...)", sysctl_name);
		FUNC1(instrs, (double)deltas[0]);
		FUNC1(cycles, (double)deltas[1]);
	}

	FUNC3(instrs);
	FUNC3(cycles);
}