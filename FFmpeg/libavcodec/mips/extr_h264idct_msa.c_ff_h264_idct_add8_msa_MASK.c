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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  pixel ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  scalar_t__ dctcoef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 size_t* scan8 ; 

void FUNC2(uint8_t **dst,
                           const int32_t *blk_offset,
                           int16_t *block, int32_t dst_stride,
                           const uint8_t nzc[15 * 8])
{
    int32_t i, j;

    for (j = 1; j < 3; j++) {
        for (i = (j * 16); i < (j * 16 + 4); i++) {
            if (nzc[scan8[i]])
                FUNC1(dst[j - 1] + blk_offset[i],
                                     block + i * 16 * sizeof(pixel),
                                     dst_stride);
            else if (((dctcoef *) block)[i * 16])
                FUNC0(dst[j - 1] + blk_offset[i],
                                              block + i * 16 * sizeof(pixel),
                                              dst_stride);
        }
    }
}