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
 int /*<<< orphan*/  FUNC1 (int,float) ; 
 int FUNC2 () ; 
 int FUNC3 (int) ; 
 float FUNC4 (int) ; 
 int FUNC5 (int (*) (int),int) ; 
 int FUNC6 () ; 

__attribute__((used)) static void FUNC7() {
    FUNC1(4, FUNC4(2));
    int (*p1)(void) = ptrtest1;
    FUNC0(55, p1());
    int (*p2)(int) = ptrtest2;
    FUNC0(110, p2(55));
    float (*p3)(float) = ptrtest3;
    FUNC1(4, p3(2));
    int (*p4)(void) = &ptrtest1;
    FUNC0(55, (**p4)());
    FUNC0(10, FUNC5(ptrtest2, 5));
}