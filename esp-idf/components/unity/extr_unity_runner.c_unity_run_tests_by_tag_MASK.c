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
struct TYPE_4__ {int /*<<< orphan*/  desc; struct TYPE_4__* next; } ;
typedef  TYPE_1__ test_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 TYPE_1__* s_unity_tests_first ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 

void FUNC4(const char *tag, bool invert)
{
    FUNC1("Running tests ");
    if (invert) {
        FUNC1("NOT ");
    }
    FUNC1("matching '");
    FUNC1(tag);
    FUNC1("'...");
    FUNC0();

    for (const test_desc_t *test = s_unity_tests_first; test != NULL; test = test->next) {
        if ((FUNC2(test->desc, tag) != NULL) == !invert) {
            FUNC3(test);
        }
    }
}