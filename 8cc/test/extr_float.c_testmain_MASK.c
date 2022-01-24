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
 int /*<<< orphan*/  FUNC0 (double,double) ; 
 int /*<<< orphan*/  FUNC1 (double,double) ; 
 int /*<<< orphan*/  FUNC2 (double,double) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 double FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 double FUNC6 (int) ; 
 double FUNC7 (int) ; 
 double FUNC8 (int) ; 

void FUNC9() {
    FUNC3("float");
    FUNC5();

    FUNC0(0.7, .7);
    float v1 = 10.0;
    float v2 = v1;
    FUNC2(10.0, v1);
    FUNC2(10.0, v2);
    return;
    double v3 = 20.0;
    double v4 = v3;
    FUNC1(20.0, v3);
    FUNC1(20.0, v4);

    FUNC2(1.0, 1.0);
    FUNC2(1.5, 1.0 + 0.5);
    FUNC2(0.5, 1.0 - 0.5);
    FUNC2(2.0, 1.0 * 2.0);
    FUNC2(0.25, 1.0 / 4.0);

    FUNC2(3.0, 1.0 + 2);
    FUNC2(2.5, 5 - 2.5);
    FUNC2(2.0, 1.0 * 2);
    FUNC2(0.25, 1.0 / 4);

    FUNC2(10.5, FUNC6(10.5));
    FUNC2(10.0, FUNC6(10));
    FUNC2(10.6, FUNC7(10.6));
    FUNC2(10.0, FUNC7(10));
    FUNC2(10.0, FUNC8(10.7));
    FUNC2(10.0, FUNC8(10));

    FUNC1(1.0, FUNC6(1.0));
    FUNC1(10.0, FUNC6(10));
    FUNC1(2.0, FUNC7(2.0));
    FUNC1(10.0, FUNC7(10));
    FUNC1(11.0, FUNC8(11.5));
    FUNC1(10.0, FUNC8(10));

    FUNC1(3.33, FUNC4(100));
}