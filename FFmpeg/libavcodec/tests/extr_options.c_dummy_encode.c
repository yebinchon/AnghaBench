
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVPacket ;
typedef int AVFrame ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int ENOSYS ;

__attribute__((used)) static int dummy_encode(AVCodecContext *ctx, AVPacket *pkt, const AVFrame *frame, int *got_packet)
{
    return AVERROR(ENOSYS);
}
