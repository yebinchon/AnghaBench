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
    const int l1l = (a1 + a8) >> 1;
    const int l2l = (a2 + a7) >> 1;
    const int l3l = (a3 + a6) >> 1;
    const int l4l = (a4 + a5) >> 1;

    const int l1h = (a1 + a8 + 1) >> 1;
    const int l2h = (a2 + a7 + 1) >> 1;
    const int l3h = (a3 + a6 + 1) >> 1;
    const int l4h = (a4 + a5 + 1) >> 1;

    const int mi = FUNC1(FUNC1(l1l, l2l), FUNC1(l3l, l4l));
    const int ma = FUNC0(FUNC0(l1h, l2h), FUNC0(l3h, l4h));

    return FUNC2(c, mi, ma);
}