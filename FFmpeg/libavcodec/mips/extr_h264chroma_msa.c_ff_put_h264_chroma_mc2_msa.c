
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;
typedef int int32_t ;


 int av_assert2 (int) ;
 int avc_chroma_hv_2w_msa (int *,int *,int ,int,int,int,int,int) ;
 int avc_chroma_hz_2w_msa (int *,int *,int ,int,int,int) ;
 int avc_chroma_vt_2w_msa (int *,int *,int ,int,int,int) ;

void ff_put_h264_chroma_mc2_msa(uint8_t *dst, uint8_t *src,
                                ptrdiff_t stride, int height, int x, int y)
{
    int32_t cnt;

    av_assert2(x < 8 && y < 8 && x >= 0 && y >= 0);

    if (x && y) {
        avc_chroma_hv_2w_msa(src, dst, stride, x, (8 - x), y, (8 - y), height);
    } else if (x) {
        avc_chroma_hz_2w_msa(src, dst, stride, x, (8 - x), height);
    } else if (y) {
        avc_chroma_vt_2w_msa(src, dst, stride, y, (8 - y), height);
    } else {
        for (cnt = height; cnt--;) {
            *((uint16_t *) dst) = *((uint16_t *) src);

            src += stride;
            dst += stride;
        }
    }
}
