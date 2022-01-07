
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wrap ;
typedef int AVFrame ;
typedef int AVCodecContext ;


 int testneonclobbers (int (*) (int *,int *),int *,int *) ;

wrap(avcodec_receive_frame(AVCodecContext *avctx, AVFrame *frame))
{
    testneonclobbers(avcodec_receive_frame, avctx, frame);
}
