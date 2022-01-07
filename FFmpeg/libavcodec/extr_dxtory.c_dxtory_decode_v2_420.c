
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVFrame ;
typedef int AVCodecContext ;


 int AV_PIX_FMT_YUV420P ;
 int default_setup_lru ;
 int dx2_decode_slice_420 ;
 int dxtory_decode_v2 (int *,int *,int const*,int,int ,int ,int ) ;

__attribute__((used)) static int dxtory_decode_v2_420(AVCodecContext *avctx, AVFrame *pic,
                                const uint8_t *src, int src_size)
{
    return dxtory_decode_v2(avctx, pic, src, src_size,
                            dx2_decode_slice_420,
                            default_setup_lru,
                            AV_PIX_FMT_YUV420P);
}
