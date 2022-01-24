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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(int32_t *dst, const int32_t *src, int32_t min,
                                int32_t max, unsigned int len)
{
    do {
        *dst++ = FUNC0(*src++, min, max);
        *dst++ = FUNC0(*src++, min, max);
        *dst++ = FUNC0(*src++, min, max);
        *dst++ = FUNC0(*src++, min, max);
        *dst++ = FUNC0(*src++, min, max);
        *dst++ = FUNC0(*src++, min, max);
        *dst++ = FUNC0(*src++, min, max);
        *dst++ = FUNC0(*src++, min, max);
        len   -= 8;
    } while (len > 0);
}