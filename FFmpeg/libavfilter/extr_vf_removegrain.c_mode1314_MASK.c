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
 int const FUNC1 (int const,int const) ; 

__attribute__((used)) static int FUNC2(int c, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
    const int d1 = FUNC0(a1 - a8);
    const int d2 = FUNC0(a2 - a7);
    const int d3 = FUNC0(a3 - a6);

    const int mindiff = FUNC1(FUNC1(d1, d2), d3);

    if (mindiff == d2) {
        return (a2 + a7 + 1) >> 1;
    }
    if (mindiff == d3) {
        return (a3 + a6 + 1) >> 1;
    }

    return (a1 + a8 + 1) >> 1;
}