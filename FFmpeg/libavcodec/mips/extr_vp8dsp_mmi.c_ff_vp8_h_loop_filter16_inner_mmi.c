
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int hev (int *,int,int) ;
 int vp8_filter_common_is4tap (int *,int) ;
 int vp8_filter_common_isnot4tap (int *,int) ;
 scalar_t__ vp8_normal_limit (int *,int,int,int) ;

void ff_vp8_h_loop_filter16_inner_mmi(uint8_t *dst, ptrdiff_t stride,
        int flim_E, int flim_I, int hev_thresh)
{
    int i;

    for (i = 0; i < 16; i++)
        if (vp8_normal_limit(dst + i * stride, 1, flim_E, flim_I)) {
            int hv = hev(dst + i * stride, 1, hev_thresh);
            if (hv)
                vp8_filter_common_is4tap(dst + i * stride, 1);
            else
                vp8_filter_common_isnot4tap(dst + i * stride, 1);
        }
}
