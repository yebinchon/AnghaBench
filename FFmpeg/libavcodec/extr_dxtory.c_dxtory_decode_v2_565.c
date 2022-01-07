
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef int AVFrame ;
typedef int AVCodecContext ;


 int AV_PIX_FMT_RGB24 ;
 int dx2_decode_slice_555 ;
 int dx2_decode_slice_565 ;
 int dxtory_decode_v2 (int *,int *,int const*,int,int ,int ,int) ;
 int setup_lru_555 ;
 int setup_lru_565 ;

__attribute__((used)) static int dxtory_decode_v2_565(AVCodecContext *avctx, AVFrame *pic,
                                const uint8_t *src, int src_size, int is_565)
{
    enum AVPixelFormat fmt = AV_PIX_FMT_RGB24;
    if (is_565)
        return dxtory_decode_v2(avctx, pic, src, src_size,
                                dx2_decode_slice_565,
                                setup_lru_565,
                                fmt);
    else
        return dxtory_decode_v2(avctx, pic, src, src_size,
                                dx2_decode_slice_555,
                                setup_lru_555,
                                fmt);
}
