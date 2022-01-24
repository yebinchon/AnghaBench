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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,scalar_t__) ; 

uint8_t *FUNC2(const uint8_t *src, uint32_t src_len,
                                  uint32_t *dst_len, int header_len)
{
    uint8_t *dst;
    uint32_t i, len;

    dst = FUNC0(src_len + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!dst)
        return NULL;

    /* NAL unit header */
    i = len = 0;
    while (i < header_len && i < src_len)
        dst[len++] = src[i++];

    while (i + 2 < src_len)
        if (!src[i] && !src[i + 1] && src[i + 2] == 3) {
            dst[len++] = src[i++];
            dst[len++] = src[i++];
            i++; // remove emulation_prevention_three_byte
        } else
            dst[len++] = src[i++];

    while (i < src_len)
        dst[len++] = src[i++];

    FUNC1(dst + len, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    *dst_len = len;
    return dst;
}