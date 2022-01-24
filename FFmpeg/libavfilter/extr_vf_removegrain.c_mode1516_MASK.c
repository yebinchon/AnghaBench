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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int const,int const) ; 
 int FUNC3 (int const,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int c, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
    const int d1 = FUNC0(a1 - a8);
    const int d2 = FUNC0(a2 - a7);
    const int d3 = FUNC0(a3 - a6);

    const int mindiff = FUNC2(FUNC2(d1, d2), d3);
    const int average = (2 * (a2 + a7) + a1 + a3 + a6 + a8 + 4) >> 3;

    if (mindiff == d2) {
        return FUNC3(average, FUNC2(a2, a7), FUNC1(a2, a7));
    }
    if (mindiff == d3) {
        return FUNC3(average, FUNC2(a3, a6), FUNC1(a3, a6));
    }

    return FUNC3(average, FUNC2(a1, a8), FUNC1(a1, a8));
}