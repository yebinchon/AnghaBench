
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int32_t ;


 int ff_put_vp8_epel8_h6v6_msa (int *,int ,int *,int ,int,int,int) ;

void ff_put_vp8_epel16_h6v6_msa(uint8_t *dst, ptrdiff_t dst_stride,
                               uint8_t *src, ptrdiff_t src_stride,
                               int height, int mx, int my)
{
    int32_t multiple8_cnt;

    for (multiple8_cnt = 2; multiple8_cnt--;) {
        ff_put_vp8_epel8_h6v6_msa(dst, dst_stride, src, src_stride, height,
                                  mx, my);

        src += 8;
        dst += 8;
    }
}
