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

__attribute__((used)) static int FUNC0(int i, int n)
{
    if (n <= 32)
        return i >= 16;
    else if (i < n/2)
        return FUNC0(i, n/2);
    else if (i < 3*n/4)
        return FUNC0(i - n/2, n/4);
    else
        return FUNC0(i - 3*n/4, n/4);
}