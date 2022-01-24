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
struct TYPE_4__ {int cpu_flag; char const* cpu_flag_name; int /*<<< orphan*/  current_test_name; scalar_t__ test_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* func ) () ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 TYPE_2__ state ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* tests ; 

__attribute__((used)) static void FUNC4(const char *name, int flag)
{
    int old_cpu_flag = state.cpu_flag;

    flag |= old_cpu_flag;
    FUNC0(-1);
    state.cpu_flag = flag & FUNC1();
    FUNC0(state.cpu_flag);

    if (!flag || state.cpu_flag != old_cpu_flag) {
        int i;

        state.cpu_flag_name = name;
        for (i = 0; tests[i].func; i++) {
            if (state.test_name && FUNC2(tests[i].name, state.test_name))
                continue;
            state.current_test_name = tests[i].name;
            tests[i].func();
        }
    }
}