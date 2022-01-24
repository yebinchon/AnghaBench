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
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int const,int const) ; 

__attribute__((used)) static int FUNC3(int c, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
    const int mi = FUNC1(FUNC1(FUNC1(a1, a2), FUNC1(a3, a4)), FUNC1(FUNC1(a5, a6), FUNC1(a7, a8)));
    const int ma = FUNC0(FUNC0(FUNC0(a1, a2), FUNC0(a3, a4)), FUNC0(FUNC0(a5, a6), FUNC0(a7, a8)));

    return FUNC2(c, mi, ma);
}