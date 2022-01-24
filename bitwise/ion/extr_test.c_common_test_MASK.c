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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,...) ; 

void FUNC6(void) {
    FUNC1();
    FUNC2();
    FUNC3();

    char *str1 = FUNC5("%d %d", 1, 2);
    FUNC0(FUNC4(str1, "1 2") == 0);
    char *str2 = FUNC5("%s %s", str1, str1);
    FUNC0(FUNC4(str2, "1 2 1 2") == 0);
    char *str3 = FUNC5("%s asdf %s", str2, str2);
    FUNC0(FUNC4(str3, "1 2 1 2 asdf 1 2 1 2") == 0);
}