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
typedef  unsigned int uint32_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int const,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC1(float *dst, const float *src,
                                         float *min, float *max, int len)
{
    int i;
    uint32_t mini        = *(uint32_t *) min;
    uint32_t maxi        = *(uint32_t *) max;
    uint32_t maxisign    = maxi ^ (1U << 31);
    uint32_t *dsti       = (uint32_t *) dst;
    const uint32_t *srci = (const uint32_t *) src;

    for (i = 0; i < len; i += 8) {
        dsti[i + 0] = FUNC0(srci[i + 0], mini, maxi, maxisign);
        dsti[i + 1] = FUNC0(srci[i + 1], mini, maxi, maxisign);
        dsti[i + 2] = FUNC0(srci[i + 2], mini, maxi, maxisign);
        dsti[i + 3] = FUNC0(srci[i + 3], mini, maxi, maxisign);
        dsti[i + 4] = FUNC0(srci[i + 4], mini, maxi, maxisign);
        dsti[i + 5] = FUNC0(srci[i + 5], mini, maxi, maxisign);
        dsti[i + 6] = FUNC0(srci[i + 6], mini, maxi, maxisign);
        dsti[i + 7] = FUNC0(srci[i + 7], mini, maxi, maxisign);
    }
}