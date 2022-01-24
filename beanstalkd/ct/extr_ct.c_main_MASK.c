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
 int /*<<< orphan*/  ctmainbench ; 
 int /*<<< orphan*/  ctmaintest ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int
FUNC6(int argc, char **argv)
{
    int n = FUNC0();
    FUNC3(ctmaintest, n);
    FUNC5(n);
    int code = FUNC1(ctmaintest);
    if (code != 0) {
        return code;
    }
    if (argc == 2 && FUNC4(argv[1], "-b") == 0) {
        FUNC2(ctmainbench);
    }
    return 0;
}