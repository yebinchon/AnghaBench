
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int vp8_v_loop_filter8_mmi (int *,int ,int,int,int) ;

void ff_vp8_v_loop_filter16_mmi(uint8_t *dst, ptrdiff_t stride, int flim_E,
        int flim_I, int hev_thresh)
{
    vp8_v_loop_filter8_mmi(dst, stride, flim_E, flim_I, hev_thresh);
    vp8_v_loop_filter8_mmi(dst + 8, stride, flim_E, flim_I, hev_thresh);
}
