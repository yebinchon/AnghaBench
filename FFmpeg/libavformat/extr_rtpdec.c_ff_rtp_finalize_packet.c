
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int stream_index; int data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVIOContext ;


 int av_freep (int *) ;
 int av_init_packet (TYPE_1__*) ;
 int av_packet_from_data (TYPE_1__*,int ,int) ;
 int avio_close_dyn_buf (int *,int *) ;

int ff_rtp_finalize_packet(AVPacket *pkt, AVIOContext **dyn_buf, int stream_idx)
{
    int ret;
    av_init_packet(pkt);

    pkt->size = avio_close_dyn_buf(*dyn_buf, &pkt->data);
    pkt->stream_index = stream_idx;
    *dyn_buf = ((void*)0);
    if ((ret = av_packet_from_data(pkt, pkt->data, pkt->size)) < 0) {
        av_freep(&pkt->data);
        return ret;
    }
    return pkt->size;
}
