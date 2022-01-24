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
struct TYPE_6__ {scalar_t__ flag; int /*<<< orphan*/ * name; } ;
struct TYPE_5__ {char* bench_pattern; char* test_name; int num_failed; int num_checked; int /*<<< orphan*/  funcs; int /*<<< orphan*/  bench_pattern_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  checkasm_checked_call ; 
 int /*<<< orphan*/  checkasm_checked_call_vfp ; 
 int /*<<< orphan*/  checkasm_lfg ; 
 TYPE_3__* cpus ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__ state ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 unsigned int FUNC13 (char*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* tests ; 

int FUNC14(int argc, char *argv[])
{
    unsigned int seed = FUNC1();
    int i, ret = 0;

#if ARCH_ARM && HAVE_ARMV5TE_EXTERNAL
    if (have_vfp(av_get_cpu_flags()) || have_neon(av_get_cpu_flags()))
        checkasm_checked_call = checkasm_checked_call_vfp;
#endif

    if (!tests[0].func || !cpus[0].flag) {
        FUNC7(stderr, "checkasm: no tests to perform\n");
        return 0;
    }

    while (argc > 1) {
        if (!FUNC12(argv[1], "--bench", 7)) {
            if (FUNC3() < 0)
                return 1;
            if (argv[1][7] == '=') {
                state.bench_pattern = argv[1] + 8;
                state.bench_pattern_len = FUNC11(state.bench_pattern);
            } else
                state.bench_pattern = "";
        } else if (!FUNC12(argv[1], "--test=", 7)) {
            state.test_name = argv[1] + 7;
        } else {
            seed = FUNC13(argv[1], NULL, 10);
        }

        argc--;
        argv++;
    }

    FUNC7(stderr, "checkasm: using random seed %u\n", seed);
    FUNC2(&checkasm_lfg, seed);

    FUNC5(NULL, 0);
    for (i = 0; cpus[i].flag; i++)
        FUNC5(cpus[i].name, cpus[i].flag);

    if (state.num_failed) {
        FUNC7(stderr, "checkasm: %d of %d tests have failed\n", state.num_failed, state.num_checked);
        ret = 1;
    } else {
        FUNC7(stderr, "checkasm: all %d tests passed\n", state.num_checked);
        if (state.bench_pattern) {
            FUNC10(state.funcs);
        }
    }

    FUNC6(state.funcs);
    FUNC4();
    return ret;
}