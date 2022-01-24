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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  KTRACE_KPERF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC14 (char const*,char**,int /*<<< orphan*/ ) ; 

void
FUNC15(const char *config)
{
	int pairs = 0;
	char *end;
	bool pet = false;

	FUNC0(config != NULL);

	FUNC12();

	FUNC11(KTRACE_KPERF);

	if (config[0] == 'p') {
		pet = true;
		config++;
	}

	do {
		uint32_t action_samplers;
		uint64_t timer_period_ns;
		uint64_t timer_period;

		pairs += 1;
		FUNC1(pairs);
		FUNC6(pairs);

		action_samplers = (uint32_t)FUNC14(config, &end, 0);
		if (config == end) {
			FUNC9("kperf: unable to parse '%s' as action sampler\n", config);
			goto out;
		}
		config = end;

		FUNC2(pairs, action_samplers);

		if (config[0] == '\0') {
			FUNC9("kperf: missing timer period in config\n");
			goto out;
		}
		config++;

		timer_period_ns = FUNC14(config, &end, 0);
		if (config == end) {
			FUNC9("kperf: unable to parse '%s' as timer period\n", config);
			goto out;
		}
		FUNC13(timer_period_ns, &timer_period);
		config = end;

		FUNC7(pairs - 1, timer_period);
		FUNC5(pairs - 1, pairs);

		if (pet) {
			FUNC8(pairs - 1);
			FUNC4(1);
			pet = false;
		}
	} while (*(config++) == ',');

	int error = FUNC3();
	if (error) {
		FUNC9("kperf: cannot enable sampling at boot: %d", error);
	}

out:
	FUNC10();
}