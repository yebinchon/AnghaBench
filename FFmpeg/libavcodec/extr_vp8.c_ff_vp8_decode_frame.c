
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVPacket ;
typedef int AVCodecContext ;


 int IS_VP8 ;
 int vp78_decode_frame (int *,void*,int*,int *,int ) ;

int ff_vp8_decode_frame(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    return vp78_decode_frame(avctx, data, got_frame, avpkt, IS_VP8);
}
