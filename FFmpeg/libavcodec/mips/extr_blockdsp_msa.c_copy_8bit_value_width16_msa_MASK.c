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
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uint8_t *src, uint8_t val,
                                        int32_t src_stride, int32_t height)
{
    int32_t cnt;
    v16u8 val0;

    val0 = (v16u8) FUNC1(val);

    for (cnt = (height >> 3); cnt--;) {
        FUNC0(val0, val0, val0, val0, val0, val0, val0, val0, src, src_stride);
        src += (8 * src_stride);
    }
}