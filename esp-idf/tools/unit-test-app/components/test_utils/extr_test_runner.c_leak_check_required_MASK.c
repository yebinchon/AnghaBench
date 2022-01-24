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
struct TYPE_2__ {int /*<<< orphan*/ * CurrentDetail1; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_LEAK_ALL ; 
 int /*<<< orphan*/  TYPE_LEAK_CRITICAL ; 
 int /*<<< orphan*/  TYPE_LEAK_WARNING ; 
 TYPE_1__ Unity ; 
 void* critical_leak_threshold ; 
 int FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* warn_leak_threshold ; 

__attribute__((used)) static bool FUNC4(void)
{
    warn_leak_threshold = FUNC3(TYPE_LEAK_WARNING, COMP_LEAK_ALL);
    critical_leak_threshold = FUNC3(TYPE_LEAK_CRITICAL, COMP_LEAK_ALL);
    if (Unity.CurrentDetail1 != NULL) {
        const char *leaks = "[leaks";
        const int len_leaks = FUNC0(leaks);
        const char *sub_leaks = FUNC1(Unity.CurrentDetail1, leaks);
        if (sub_leaks != NULL) {
            if (sub_leaks[len_leaks] == ']') {
                return true;
            } else if (sub_leaks[len_leaks] == '=') {
                critical_leak_threshold = FUNC2(&sub_leaks[len_leaks + 1], NULL, 10);
                warn_leak_threshold = critical_leak_threshold;
                return false;
            }
        }
    }
    return false;
}