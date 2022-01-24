#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int test_fn_count; int /*<<< orphan*/  line; int /*<<< orphan*/  name; int /*<<< orphan*/ * fn; } ;
typedef  TYPE_1__ test_desc_t ;
typedef  int /*<<< orphan*/  cmdline ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(const test_desc_t *test_ms)
{
    int selection;
    char cmdline[256] = {0};

    FUNC4(test_ms);
    while (FUNC5(cmdline) == 0) {
        FUNC7(cmdline, sizeof(cmdline));
        if (FUNC5(cmdline) == 0) {
            /* if input was newline, print a new menu */
            FUNC4(test_ms);
        }
    }
    selection = FUNC3((const char *) cmdline) - 1;
    if (selection >= 0 && selection < test_ms->test_fn_count) {
        FUNC6(test_ms->fn[selection], test_ms->name, test_ms->line);
    } else {
        FUNC1("Invalid selection, your should input number 1-");
        FUNC2(test_ms->test_fn_count);
        FUNC0();
    }
    return selection;
}