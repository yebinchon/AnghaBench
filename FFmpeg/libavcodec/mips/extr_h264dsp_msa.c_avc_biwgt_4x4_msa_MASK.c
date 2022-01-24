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
typedef  int v8i16 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(uint8_t *src, uint8_t *dst, int32_t stride,
                              int32_t log2_denom, int32_t src_weight,
                              int32_t dst_weight, int32_t offset_in)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16i8 src_wgt, dst_wgt, wgt, vec0, vec1;
    v16u8 src0, dst0;
    v8i16 tmp0, tmp1, denom, offset;

    offset_in = (unsigned) ((offset_in + 1) | 1) << log2_denom;
    offset_in += (128 * (src_weight + dst_weight));

    src_wgt = FUNC7(src_weight);
    dst_wgt = FUNC7(dst_weight);
    offset = FUNC8(offset_in);
    denom = FUNC8(log2_denom + 1);

    wgt = FUNC9(dst_wgt, src_wgt);

    FUNC3(src, stride, tp0, tp1, tp2, tp3);
    FUNC2(tp0, tp1, tp2, tp3, src0);
    FUNC3(dst, stride, tp0, tp1, tp2, tp3);
    FUNC2(tp0, tp1, tp2, tp3, dst0);
    FUNC5(src0, dst0);
    FUNC1(dst0, src0, vec0, vec1);
    tmp0 = FUNC6(offset, wgt, vec0);
    tmp1 = FUNC6(offset, wgt, vec1);
    tmp0 >>= denom;
    tmp1 >>= denom;
    FUNC0(tmp0, tmp1);
    dst0 = (v16u8) FUNC10((v16i8) tmp1, (v16i8) tmp0);
    FUNC4(dst0, 0, 1, 2, 3, dst, stride);
}