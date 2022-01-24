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
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1() {
    int a = 0;
#ifdef ONE
    a = 1;
#else
    a = 2;
#
#1234
#endif
    FUNC0(a, 1);

#ifdef NO_SUCH_MACRO
    a = 3;
#else
    a = 4;
#endif
    FUNC0(a, 4);

#ifndef ONE
    a = 5;
#else
    a = 6;
#endif
    FUNC0(a, 6);

#ifndef NO_SUCH_MACRO
    a = 7;
#else
    a = 8;
#endif
    FUNC0(a, 7);
}