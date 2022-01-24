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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

void FUNC7(void)
{
    /* These are the different ways of running registered tests.
     * In practice, only one of them is usually needed.
     *
     * UNITY_BEGIN() and UNITY_END() calls tell Unity to print a summary
     * (number of tests executed/failed/ignored) of tests executed between these calls.
     */
    FUNC2("Executing one test by its name");
    FUNC0();
    FUNC5("Mean of an empty array is zero");
    FUNC1();

    FUNC2("Running tests with [mean] tag");
    FUNC0();
    FUNC6("[mean]", false);
    FUNC1();

    FUNC2("Running tests without [fails] tag");
    FUNC0();
    FUNC6("[fails]", true);
    FUNC1();

    FUNC2("Running all the registered tests");
    FUNC0();
    FUNC3();
    FUNC1();

    FUNC2("Starting interactive test menu");
    /* This function will not return, and will be busy waiting for UART input.
     * Make sure that task watchdog is disabled if you use this function.
     */
    FUNC4();
}