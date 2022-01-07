
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int mss2_blit_wmv9_template (int *,int ,int,int,int,int const*,int ,int *,int ,int *,int *,int ,int,int) ;

__attribute__((used)) static void mss2_gray_fill_masked_c(uint8_t *dst, ptrdiff_t dst_stride,
                                    int maskcolor, const uint8_t *mask,
                                    ptrdiff_t mask_stride, int w, int h)
{
    mss2_blit_wmv9_template(dst, dst_stride, 1, 1,
                            maskcolor, mask, mask_stride,
                            ((void*)0), 0,
                            ((void*)0), ((void*)0), 0,
                            w, h);
}
