#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_120__   TYPE_1__ ;

/* Type definitions */
struct TYPE_120__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v8i16 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  VP9_DCT_CONST_BITS ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC17 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  cospi_12_64 ; 
 int /*<<< orphan*/  cospi_16_64 ; 
 int /*<<< orphan*/  cospi_20_64 ; 
 int /*<<< orphan*/  cospi_24_64 ; 
 int /*<<< orphan*/  cospi_28_64 ; 
 int /*<<< orphan*/  cospi_4_64 ; 
 int /*<<< orphan*/  cospi_8_64 ; 

__attribute__((used)) static void FUNC18(int16_t *input, uint8_t *dst,
                                             int32_t dst_stride)
{
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v8i16 s0, s1, s2, s3, s4, s5, s6, s7, k0, k1, k2, k3, m0, m1, m2, m3;
    v4i32 tmp0, tmp1, tmp2, tmp3;
    v8i16 zero = { 0 };

    /* load vector elements of 8x8 block */
    FUNC7(input, 8, in0, in1, in2, in3, in4, in5, in6, in7);
    FUNC12(zero, zero, zero, zero, zero, zero, zero, zero, input, 8);
    FUNC5(in1, in0, in3, in2, in0, in1);
    FUNC5(in5, in4, in7, in6, in2, in3);

    /* stage1 */
    FUNC4(in3, in0, in2, in1, s0, s1);
    k0 = FUNC16(cospi_28_64, -cospi_4_64);
    k1 = FUNC16(cospi_4_64, cospi_28_64);
    k2 = FUNC16(-cospi_20_64, cospi_12_64);
    k3 = FUNC16(cospi_12_64, cospi_20_64);
    FUNC3(s0, s0, s1, s1, k0, k1, k2, k3, tmp0, tmp1, tmp2, tmp3);
    FUNC11(tmp0, tmp1, tmp2, tmp3, VP9_DCT_CONST_BITS);
    FUNC8(zero, tmp0, zero, tmp1, s0, s1);
    FUNC8(zero, tmp2, zero, tmp3, s2, s3);
    FUNC0(s0, s1, s3, s2, s4, s7, s6, s5);

    /* stage2 */
    FUNC6(in3, in1, in2, in0, s1, s0);
    k0 = FUNC16(cospi_16_64, cospi_16_64);
    k1 = FUNC16(cospi_16_64, -cospi_16_64);
    k2 = FUNC16(cospi_24_64, -cospi_8_64);
    k3 = FUNC16(cospi_8_64, cospi_24_64);
    FUNC3(s0, s0, s1, s1, k0, k1, k2, k3, tmp0, tmp1, tmp2, tmp3);
    FUNC11(tmp0, tmp1, tmp2, tmp3, VP9_DCT_CONST_BITS);
    FUNC8(zero, tmp0, zero, tmp1, s0, s1);
    FUNC8(zero, tmp2, zero, tmp3, s2, s3);
    FUNC0(s0, s1, s2, s3, m0, m1, m2, m3);

    /* stage3 */
    s0 = FUNC17(s6, s5);

    k1 = FUNC16(-cospi_16_64, cospi_16_64);
    FUNC2(s0, s0, k1, k0, tmp0, tmp1);
    FUNC10(tmp0, tmp1, VP9_DCT_CONST_BITS);
    FUNC8(zero, tmp0, zero, tmp1, s2, s3);

    /* stage4 */
    FUNC1(m0, m1, m2, m3, s4, s2, s3, s7,
                in0, in1, in2, in3, in4, in5, in6, in7);
    FUNC13(in0, in1, in2, in3, in4, in5, in6, in7,
                       in0, in1, in2, in3, in4, in5, in6, in7);
    FUNC15(in0, in1, in2, in3, in4, in5, in6, in7,
                   in0, in1, in2, in3, in4, in5, in6, in7);

    /* final rounding (add 2^4, divide by 2^5) and shift */
    FUNC9(in0, in1, in2, in3, 5);
    FUNC9(in4, in5, in6, in7, 5);

    /* add block and store 8x8 */
    FUNC14(dst, dst_stride, in0, in1, in2, in3);
    dst += (4 * dst_stride);
    FUNC14(dst, dst_stride, in4, in5, in6, in7);
}