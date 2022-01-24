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
struct TYPE_3__ {char* name; char* desc; int test_fn_count; char** test_fn_name; struct TYPE_3__* next; } ;
typedef  TYPE_1__ test_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* s_unity_tests_first ; 

__attribute__((used)) static int FUNC5(void)
{
    int test_counter = 0;
    FUNC1();
    FUNC1();
    FUNC3("Here's the test menu, pick your combo:");
    FUNC1();
    for (const test_desc_t *test = s_unity_tests_first;
            test != NULL;
            test = test->next, ++test_counter) {

        FUNC3("(");
        FUNC4(test_counter + 1);
        FUNC3(")");
        FUNC2();
        FUNC3("\"");
        FUNC3(test->name);
        FUNC3("\" ");
        FUNC3(test->desc);
        FUNC1();

        if (test->test_fn_count > 1) {
            for (int i = 0; i < test->test_fn_count; i++) {
                FUNC2();
                FUNC3("(");
                FUNC4(i + 1);
                FUNC3(")");
                FUNC2();
                FUNC3("\"");
                FUNC3(test->test_fn_name[i]);
                FUNC3("\"");
                FUNC1();
            }
        }
    }
    FUNC1();
    FUNC3("Enter test for running."); /* unit_test.py needs it for finding the end of test menu */
    FUNC1();
    FUNC0();
    return test_counter;
}