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
 int const FUNC0 (int const,int const) ; 
 int const FUNC1 (int const,int const) ; 
 int FUNC2 (int,int const,int const) ; 

__attribute__((used)) static int FUNC3(int c, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
    const int l1 = (a1 + a8 + 1) >> 1;
    const int l2 = (a2 + a7 + 1) >> 1;
    const int l3 = (a3 + a6 + 1) >> 1;
    const int l4 = (a4 + a5 + 1) >> 1;

    const int mi = FUNC1(FUNC1(l1, l2), FUNC1(l3, l4));
    const int ma = FUNC0(FUNC0(l1, l2), FUNC0(l3, l4));

    return FUNC2(c, mi, ma);
}