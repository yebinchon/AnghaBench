
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int MpegEncContext ;


 int sad_vert_bilinear_filter_8width_msa (int *,int ,int *,int ,int) ;

int ff_pix_abs8_y2_msa(MpegEncContext *v, uint8_t *pix1, uint8_t *pix2,
                       ptrdiff_t stride, int h)
{
    return sad_vert_bilinear_filter_8width_msa(pix1, stride, pix2, stride, h);
}
