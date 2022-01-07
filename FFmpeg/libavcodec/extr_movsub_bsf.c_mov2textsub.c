
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVBSFContext ;


 int AVERROR_INVALIDDATA ;
 int AV_RB16 (int) ;
 int FFMIN (int,int ) ;
 int av_packet_unref (TYPE_1__*) ;
 int ff_bsf_get_packet_ref (int *,TYPE_1__*) ;

__attribute__((used)) static int mov2textsub(AVBSFContext *ctx, AVPacket *pkt)
{
    int ret = 0;

    ret = ff_bsf_get_packet_ref(ctx, pkt);
    if (ret < 0)
        return ret;

    if (pkt->size < 2) {
       av_packet_unref(pkt);
       return AVERROR_INVALIDDATA;
    }

    pkt->size = FFMIN(pkt->size - 2, AV_RB16(pkt->data));
    pkt->data += 2;

    return 0;
}
