#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; int test_fn_count; int /*<<< orphan*/  line; int /*<<< orphan*/ * fn; int /*<<< orphan*/  desc; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ test_desc_t ;
struct TYPE_6__ {int /*<<< orphan*/  CurrentDetail1; int /*<<< orphan*/  TestFile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_4__ Unity ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(const test_desc_t *test)
{
    FUNC3("Running ");
    FUNC3(test->name);
    FUNC3("...");
    FUNC2();
    // Unit test runner expects to see test name before the test starts
    FUNC1();

    Unity.TestFile = test->file;
    Unity.CurrentDetail1 = test->desc;
    bool reset_after_test = FUNC6(Unity.CurrentDetail1, "[leaks") != NULL;
    bool multi_device = FUNC6(Unity.CurrentDetail1, "[multi_device]") != NULL;
    if (test->test_fn_count == 1) {
        FUNC7(test->fn[0], test->name, test->line);
    } else {
        int selection = FUNC5(test);
        if (reset_after_test && multi_device == false) {
            if (selection != (test->test_fn_count - 1)) {
                // to do a reset for all stages except the last stage.
                FUNC4();
            }
        }
    }

    if (reset_after_test) {
        // print a result of test before to do reset for the last stage.
        FUNC0();
        FUNC3("Enter next test, or 'enter' to see menu");
        FUNC2();
        FUNC1();
        FUNC4();
    }
}