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
typedef  int uint8_t ;
typedef  int int8_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(uint8_t *dst, const uint8_t *src, int src_size,
                         uint8_t *state, const int8_t *table)
{
    uint8_t val = *state;

    while (src_size--) {
        uint8_t d = *src++;
        val = FUNC0(val + table[d & 0xF]);
        *dst++ = val;
        val = FUNC0(val + table[d >> 4]);
        *dst++ = val;
    }

    *state = val;
}