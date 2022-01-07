
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int mss2_blit_wmv9_template (int *,int ,int ,int,int,int const*,int ,int const*,int ,int const*,int const*,int ,int,int) ;

__attribute__((used)) static void mss2_blit_wmv9_masked_c(uint8_t *dst, ptrdiff_t dst_stride,
                                    int maskcolor, const uint8_t *mask,
                                    ptrdiff_t mask_stride,
                                    const uint8_t *srcy, ptrdiff_t srcy_stride,
                                    const uint8_t *srcu, const uint8_t *srcv,
                                    ptrdiff_t srcuv_stride, int w, int h)
{
    mss2_blit_wmv9_template(dst, dst_stride, 0, 1,
                            maskcolor, mask, mask_stride,
                            srcy, srcy_stride,
                            srcu, srcv, srcuv_stride,
                            w, h);
}
