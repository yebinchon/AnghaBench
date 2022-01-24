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

__attribute__((used)) static inline int FUNC0(int i, int n, int inverse)
{
    int m;
    if (n <= 2)
        return i & 1;
    m = n >> 1;
    if (!(i & m))
        return FUNC0(i, m, inverse)*2;
    m >>= 1;
    if (inverse == !(i & m))
        return FUNC0(i, m, inverse)*4 + 1;
    else
        return FUNC0(i, m, inverse)*4 - 1;
}