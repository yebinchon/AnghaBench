#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v16u8 ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(uint8_t *src,
                                     int32_t src_stride,
                                     uint8_t *dst,
                                     int32_t dst_stride,
                                     int32_t height,
                                     int32_t weight,
                                     int32_t offset,
                                     int32_t rnd_val)
{
    uint32_t loop_cnt;
    v16u8 out0, out1, out2, out3, out4, out5;
    v16i8 src0, src1, src2, src3, src4, src5;
    v16i8 zero = { 0 };
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, offset_vec;
    v8i16 dst6, dst7, dst8, dst9, dst10, dst11;
    v4i32 weight_vec, rnd_vec;

    weight = weight & 0x0000FFFF;
    weight_vec = FUNC8(weight);
    offset_vec = FUNC7(offset);
    rnd_vec = FUNC8(rnd_val);

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        FUNC2(src, 16, src0, src1, src2);
        src += src_stride;
        FUNC2(src, 16, src3, src4, src5);
        src += src_stride;

        FUNC1(zero, src0, dst0, dst1);
        FUNC1(zero, src1, dst2, dst3);
        FUNC1(zero, src2, dst4, dst5);
        FUNC1(zero, src3, dst6, dst7);
        FUNC1(zero, src4, dst8, dst9);
        FUNC1(zero, src5, dst10, dst11);
        FUNC4(dst0, dst1, dst2, dst3, 6);
        FUNC4(dst4, dst5, dst6, dst7, 6);
        FUNC4(dst8, dst9, dst10, dst11, 6);
        FUNC0(dst0, dst1, dst2, dst3, weight_vec,
                                       offset_vec, rnd_vec, dst0, dst1, dst2,
                                       dst3);
        FUNC0(dst4, dst5, dst6, dst7, weight_vec,
                                       offset_vec, rnd_vec, dst4, dst5, dst6,
                                       dst7);
        FUNC0(dst8, dst9, dst10, dst11, weight_vec,
                                       offset_vec, rnd_vec, dst8, dst9, dst10,
                                       dst11);
        FUNC3(dst1, dst0, dst3, dst2, dst5, dst4, out0, out1, out2);
        FUNC3(dst7, dst6, dst9, dst8, dst11, dst10, out3, out4, out5);
        FUNC6(out0, out1, dst, 16);
        FUNC5(out2, dst + 32);
        dst += dst_stride;
        FUNC6(out3, out4, dst, 16);
        FUNC5(out5, dst + 32);
        dst += dst_stride;
    }
}