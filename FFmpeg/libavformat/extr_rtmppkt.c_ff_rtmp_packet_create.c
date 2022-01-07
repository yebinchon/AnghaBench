
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int channel_id; int timestamp; scalar_t__ ts_field; scalar_t__ extra; int type; int data; } ;
typedef int RTMPPacketType ;
typedef TYPE_1__ RTMPPacket ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_realloc (int *,int) ;

int ff_rtmp_packet_create(RTMPPacket *pkt, int channel_id, RTMPPacketType type,
                          int timestamp, int size)
{
    if (size) {
        pkt->data = av_realloc(((void*)0), size);
        if (!pkt->data)
            return AVERROR(ENOMEM);
    }
    pkt->size = size;
    pkt->channel_id = channel_id;
    pkt->type = type;
    pkt->timestamp = timestamp;
    pkt->extra = 0;
    pkt->ts_field = 0;

    return 0;
}
