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
 int* a1 ; 
 int* a2 ; 
 int defaultint ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * intp ; 
 int /*<<< orphan*/  l1 ; 
 int* p1 ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  s1 ; 
 int /*<<< orphan*/  s2 ; 
 int val ; 
 int x1 ; 
 int x2 ; 
 int x3 ; 
 int x4 ; 
 int x5 ; 
 int x6 ; 

void FUNC4() {
    FUNC3("global variable");

    defaultint = 3;
    FUNC0(3, defaultint);

    FUNC0(21, val);
    val = 22;
    FUNC0(22, val);
    FUNC0(22, *p1);

    a1[1] = 23;
    FUNC0(23, a1[1]);
    FUNC0(25, a2[1]);

    x1 = 1;
    x2 = 2;
    FUNC0(1, x1);
    FUNC0(2, x2);
    x3 = 3;
    FUNC0(3, x3);
    FUNC0(4, x4);
    FUNC0(5, x5);
    x6 = 6;
    FUNC0(6, x6);

    FUNC1("abcd", s1);
    FUNC1("ABCD", s2);

    FUNC2(8, l1);
    FUNC2(9, *intp);
}