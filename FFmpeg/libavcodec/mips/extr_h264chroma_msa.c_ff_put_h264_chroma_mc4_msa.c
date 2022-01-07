
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int av_assert2 (int) ;
 int avc_chroma_hv_4w_msa (int *,int *,int ,int,int,int,int,int) ;
 int avc_chroma_hz_4w_msa (int *,int *,int ,int,int,int) ;
 int avc_chroma_vt_4w_msa (int *,int *,int ,int,int,int) ;
 int copy_width4_msa (int *,int *,int ,int) ;

void ff_put_h264_chroma_mc4_msa(uint8_t *dst, uint8_t *src,
                                ptrdiff_t stride, int height, int x, int y)
{
    av_assert2(x < 8 && y < 8 && x >= 0 && y >= 0);

    if (x && y) {
        avc_chroma_hv_4w_msa(src, dst, stride, x, (8 - x), y, (8 - y), height);
    } else if (x) {
        avc_chroma_hz_4w_msa(src, dst, stride, x, (8 - x), height);
    } else if (y) {
        avc_chroma_vt_4w_msa(src, dst, stride, y, (8 - y), height);
    } else {
        copy_width4_msa(src, dst, stride, height);
    }
}
