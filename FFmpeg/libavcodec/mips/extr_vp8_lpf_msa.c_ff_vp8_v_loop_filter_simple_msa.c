
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int ptrdiff_t ;


 int LD_UB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ST_UB2 (scalar_t__,scalar_t__,int *,int) ;
 int VP8_SIMPLE_FILT (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int VP8_SIMPLE_MASK (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_fill_b (int) ;

void ff_vp8_v_loop_filter_simple_msa(uint8_t *src, ptrdiff_t pitch,
                                     int b_limit_ptr)
{
    v16u8 p1, p0, q1, q0;
    v16u8 mask, b_limit;

    b_limit = (v16u8) __msa_fill_b(b_limit_ptr);

    LD_UB4(src - (pitch << 1), pitch, p1, p0, q0, q1);
    VP8_SIMPLE_MASK(p1, p0, q0, q1, b_limit, mask);
    VP8_SIMPLE_FILT(p1, p0, q0, q1, mask);
    ST_UB2(p0, q0, (src - pitch), pitch);
}
