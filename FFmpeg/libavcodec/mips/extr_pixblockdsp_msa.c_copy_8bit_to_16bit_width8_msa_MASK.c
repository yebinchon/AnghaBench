#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v16u8 ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(const uint8_t *src, int32_t src_stride,
                                          int16_t *dst, int32_t dst_stride,
                                          int32_t height)
{
    uint8_t *dst_ptr;
    int32_t cnt;
    v16u8 src0, src1, src2, src3;
    v16i8 zero = { 0 };

    dst_ptr = (uint8_t *) dst;

    for (cnt = (height >> 2); cnt--;) {
        FUNC1(src, src_stride, src0, src1, src2, src3);
        src += (4 * src_stride);

        FUNC0(zero, src0, zero, src1, zero, src2, zero, src3,
                   src0, src1, src2, src3);

        FUNC2(src0, src1, src2, src3, dst_ptr, (dst_stride * 2));
        dst_ptr += (4 * 2 * dst_stride);
    }
}