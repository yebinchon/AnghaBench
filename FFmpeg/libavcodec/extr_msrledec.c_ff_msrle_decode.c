
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;
typedef int AVFrame ;
typedef int AVCodecContext ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,int) ;
 int msrle_decode_8_16_24_32 (int *,int *,int,int *) ;
 int msrle_decode_pal4 (int *,int *,int *) ;

int ff_msrle_decode(AVCodecContext *avctx, AVFrame *pic,
                    int depth, GetByteContext *gb)
{
    switch(depth){
    case 4:
        return msrle_decode_pal4(avctx, pic, gb);
    case 8:
    case 16:
    case 24:
    case 32:
        return msrle_decode_8_16_24_32(avctx, pic, depth, gb);
    default:
        av_log(avctx, AV_LOG_ERROR, "Unknown depth %d\n", depth);
        return -1;
    }
}
