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
typedef  int /*<<< orphan*/  cmdline ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 

void FUNC16(void)
{
    FUNC3();
    FUNC3();
    FUNC4("Press ENTER to see the list of tests.");
    FUNC3();
    int test_count = FUNC5();
    while (true) {
        char cmdline[256] = { 0 };
        while (FUNC8(cmdline) == 0) {
            FUNC11(cmdline, sizeof(cmdline));
            FUNC10(cmdline);
            if (FUNC8(cmdline) == 0) {
                /* if input was newline, print a new menu */
                FUNC7();
            }
        }
        /*use '-' to show test history. Need to do it before UNITY_BEGIN cleanup history */
        if (cmdline[0] == '-') {
            FUNC1();
            continue;
        }

        FUNC0();

        size_t idx = 0;
        bool invert = false;
        if (cmdline[idx] == '!') {
            invert = true;
            ++idx;
        }

        if (cmdline[idx] == '*') {
            FUNC12();
        } else if (cmdline[idx] == '[') {
            FUNC15(cmdline + idx, invert);
        } else if (cmdline[idx] == '"') {
            char* end = FUNC9(cmdline, '"');
            if (end > &cmdline[idx]) {
                *end = 0;
                FUNC14(cmdline + idx + 1);
            }
        } else if (FUNC6((unsigned char)cmdline[idx])) {
            FUNC13(cmdline + idx, test_count);
        }

        FUNC1();

        FUNC4("Enter next test, or 'enter' to see menu");
        FUNC3();
        FUNC2();
    }
}