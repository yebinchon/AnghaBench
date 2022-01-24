#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v4i32 ;
typedef  scalar_t__ v16u8 ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int const*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,scalar_t__,TYPE_1__,scalar_t__,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 uint8_t height)
{
    uint8_t loop_cnt;
    uint32_t out0, out1;
    v16u8 src0, src1, src0_sld1, src1_sld1, res0, res1;
    v16i8 zeros = { 0 };

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        FUNC1(src, src_stride, src0, src1);
        src += (2 * src_stride);

        FUNC2(zeros, src0, zeros, src1, 1, src0_sld1, src1_sld1);
        FUNC0(src0_sld1, src0, src1_sld1, src1, res0, res1);

        out0 = FUNC4((v4i32) res0, 0);
        out1 = FUNC4((v4i32) res1, 0);
        FUNC3(out0, dst);
        dst += dst_stride;
        FUNC3(out1, dst);
        dst += dst_stride;
    }
}