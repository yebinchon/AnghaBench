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
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const,int) ; 

__attribute__((used)) static void FUNC1(int32_t *dst, const int32_t *src, int coeff, ptrdiff_t len)
{
    int i;

    for (i = 0; i < len; i++)
        dst[i] += FUNC0(src[i], coeff);
}