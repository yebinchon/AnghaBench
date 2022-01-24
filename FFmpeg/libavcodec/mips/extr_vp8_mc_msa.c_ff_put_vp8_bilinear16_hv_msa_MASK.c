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
typedef  int /*<<< orphan*/  v8u16 ;
typedef  int /*<<< orphan*/  v8i16 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** bilinear_filters_msa ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 

void FUNC11(uint8_t *dst, ptrdiff_t dst_stride,
                                  uint8_t *src, ptrdiff_t src_stride,
                                  int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter_horiz = bilinear_filters_msa[mx - 1];
    const int8_t *filter_vert = bilinear_filters_msa[my - 1];
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask;
    v16u8 filt_hz, filt_vt, vec0, vec1;
    v8u16 tmp1, tmp2, hz_out0, hz_out1, hz_out2, hz_out3;
    v8i16 filt;

    mask = FUNC3(&mc_filt_mask_arr[0]);

    /* rearranging filter */
    filt = FUNC6(filter_horiz);
    filt_hz = (v16u8) FUNC10(filt, 0);

    filt = FUNC6(filter_vert);
    filt_vt = (v16u8) FUNC10(filt, 0);

    FUNC4(src, 8, src0, src1);
    src += src_stride;

    hz_out0 = FUNC1(src0, src0, mask, filt_hz, 7);
    hz_out2 = FUNC1(src1, src1, mask, filt_hz, 7);


    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC5(src, src_stride, src0, src2, src4, src6);
        FUNC5(src + 8, src_stride, src1, src3, src5, src7);
        src += (4 * src_stride);

        hz_out1 = FUNC1(src0, src0, mask, filt_hz, 7);
        hz_out3 = FUNC1(src1, src1, mask, filt_hz, 7);
        FUNC2(hz_out0, hz_out1, hz_out2, hz_out3, vec0, vec1);
        FUNC0(vec0, vec1, filt_vt, filt_vt, tmp1, tmp2);
        FUNC9(tmp1, tmp2, 7);
        FUNC8(tmp1, tmp2, 7);
        FUNC7(tmp1, tmp2, dst);
        dst += dst_stride;

        hz_out0 = FUNC1(src2, src2, mask, filt_hz, 7);
        hz_out2 = FUNC1(src3, src3, mask, filt_hz, 7);
        FUNC2(hz_out1, hz_out0, hz_out3, hz_out2, vec0, vec1);
        FUNC0(vec0, vec1, filt_vt, filt_vt, tmp1, tmp2);
        FUNC9(tmp1, tmp2, 7);
        FUNC8(tmp1, tmp2, 7);
        FUNC7(tmp1, tmp2, dst);
        dst += dst_stride;

        hz_out1 = FUNC1(src4, src4, mask, filt_hz, 7);
        hz_out3 = FUNC1(src5, src5, mask, filt_hz, 7);
        FUNC2(hz_out0, hz_out1, hz_out2, hz_out3, vec0, vec1);
        FUNC0(vec0, vec1, filt_vt, filt_vt, tmp1, tmp2);
        FUNC9(tmp1, tmp2, 7);
        FUNC8(tmp1, tmp2, 7);
        FUNC7(tmp1, tmp2, dst);
        dst += dst_stride;

        hz_out0 = FUNC1(src6, src6, mask, filt_hz, 7);
        hz_out2 = FUNC1(src7, src7, mask, filt_hz, 7);
        FUNC2(hz_out1, hz_out0, hz_out3, hz_out2, vec0, vec1);
        FUNC0(vec0, vec1, filt_vt, filt_vt, tmp1, tmp2);
        FUNC9(tmp1, tmp2, 7);
        FUNC8(tmp1, tmp2, 7);
        FUNC7(tmp1, tmp2, dst);
        dst += dst_stride;
    }
}