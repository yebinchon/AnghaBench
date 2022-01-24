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
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

void FUNC3(void) {
    char a[] = "hello";
    FUNC0(FUNC2(a, FUNC1(a)) == 0);
    FUNC0(FUNC1(a) == FUNC1(a));
    FUNC0(FUNC1(FUNC1(a)) == FUNC1(a));
    char b[] = "hello";
    FUNC0(a != b);
    FUNC0(FUNC1(a) == FUNC1(b));
    char c[] = "hello!";
    FUNC0(FUNC1(a) != FUNC1(c));
    char d[] = "hell";
    FUNC0(FUNC1(a) != FUNC1(d));
}