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
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2() {
    int a = 1;
#if 0 + 1
    a = 2;
#else
    a = 3;
#endif
    FUNC0(2, a);

#if 0 + 1 * 2 + 4 / 2 ^ 3 & ~1 % 5
    a = 4;
#else
    a = 5;
#endif
    FUNC0(4, a);

#if 1 && 0
#else
    a = 100;
#endif
    FUNC0(100, a);

#if 1 && 1
    a = 101;
#else
#endif
    FUNC0(101, a);

#if 1 || 0
    a = 102;
#else
#endif
    FUNC0(102, a);

#if 0 || 0
#else
    a = 103;
#endif
    FUNC0(103, a);

#if 0
#elif !0
    a = 104;
#endif
    FUNC0(104, a);

#if 0
    fail("#if");
#elif 0
    fail("#elif");
#endif

#if 0 + 0
    a = 6;
#else
    a = 7;
#endif
    FUNC0(7, a);

#if ZERO
    a = 8;
#else
    a = 9;
#endif
    FUNC0(9, a);

#if NO_SUCH_MACRO
    a = 14;
#else
    a = 15;
#endif
    FUNC0(15, a);

#if LOOP
    a = 10;
#else
    a = 11;
#endif
    FUNC0(11, a);

#if LOOP - 1
    a = 12;
#else
    a = 13;
#endif
    FUNC0(12, a);
}