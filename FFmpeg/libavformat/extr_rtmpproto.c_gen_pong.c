
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int URLContext ;
struct TYPE_5__ {int size; int * data; scalar_t__ timestamp; } ;
typedef TYPE_1__ RTMPPacket ;
typedef int RTMPContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_RB32 (int *) ;
 int RTMP_NETWORK_CHANNEL ;
 int RTMP_PT_USER_CONTROL ;
 int av_log (int *,int ,char*,int) ;
 int bytestream_put_be16 (int **,int) ;
 int bytestream_put_be32 (int **,int ) ;
 int ff_rtmp_packet_create (TYPE_1__*,int ,int ,scalar_t__,int) ;
 int rtmp_send_packet (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int gen_pong(URLContext *s, RTMPContext *rt, RTMPPacket *ppkt)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    if (ppkt->size < 6) {
        av_log(s, AV_LOG_ERROR, "Too short ping packet (%d)\n",
               ppkt->size);
        return AVERROR_INVALIDDATA;
    }

    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_NETWORK_CHANNEL,RTMP_PT_USER_CONTROL,
                                     ppkt->timestamp + 1, 6)) < 0)
        return ret;

    p = pkt.data;
    bytestream_put_be16(&p, 7);
    bytestream_put_be32(&p, AV_RB32(ppkt->data+2));

    return rtmp_send_packet(rt, &pkt, 0);
}
