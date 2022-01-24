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
 int /*<<< orphan*/  FUNC1 (double,double) ; 
 int /*<<< orphan*/  FUNC2 (double,float) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6() {
    FUNC3("cast");
    FUNC2(1, (int)1);
    FUNC2(1.0, (float)1);
    FUNC1(2.0, (double)2);

    int a[3];
    *(int *)(a + 2) = 5;
    FUNC0(5, a[2]);

    FUNC4();
    FUNC5();
}