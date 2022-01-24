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
 int /*<<< orphan*/  FUNC1 (int*) ; 
 size_t FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

void FUNC6(void) {
    int *buf = NULL;
    FUNC0(FUNC2(buf) == 0);
    int n = 1024;
    for (int i = 0; i < n; i++) {
        FUNC4(buf, i);
    }
    FUNC0(FUNC2(buf) == n);
    for (size_t i = 0; i < FUNC2(buf); i++) {
        FUNC0(buf[i] == i);
    }
    FUNC1(buf);
    FUNC0(buf == NULL);
    FUNC0(FUNC2(buf) == 0);
    char *str = NULL;
    FUNC3(str, "One: %d\n", 1);
    FUNC0(FUNC5(str, "One: 1\n") == 0);
    FUNC3(str, "Hex: 0x%x\n", 0x12345678);
    FUNC0(FUNC5(str, "One: 1\nHex: 0x12345678\n") == 0);
}