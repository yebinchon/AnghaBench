
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int vp8_h_loop_filter8_mmi (int *,int ,int,int,int) ;

void ff_vp8_h_loop_filter8uv_mmi(uint8_t *dstU, uint8_t *dstV, ptrdiff_t stride,
        int flim_E, int flim_I, int hev_thresh)
{
    vp8_h_loop_filter8_mmi(dstU, stride, flim_E, flim_I, hev_thresh);
    vp8_h_loop_filter8_mmi(dstV, stride, flim_E, flim_I, hev_thresh);
}
