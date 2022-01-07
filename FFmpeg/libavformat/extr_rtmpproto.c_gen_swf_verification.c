
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int URLContext ;
struct TYPE_8__ {int swfverification; } ;
struct TYPE_7__ {int * data; } ;
typedef TYPE_1__ RTMPPacket ;
typedef TYPE_2__ RTMPContext ;


 int AV_LOG_DEBUG ;
 int RTMP_NETWORK_CHANNEL ;
 int RTMP_PT_USER_CONTROL ;
 int av_log (int *,int ,char*) ;
 int bytestream_put_be16 (int **,int) ;
 int ff_rtmp_packet_create (TYPE_1__*,int ,int ,int ,int) ;
 int memcpy (int *,int ,int) ;
 int rtmp_send_packet (TYPE_2__*,TYPE_1__*,int ) ;

__attribute__((used)) static int gen_swf_verification(URLContext *s, RTMPContext *rt)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    av_log(s, AV_LOG_DEBUG, "Sending SWF verification...\n");
    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_NETWORK_CHANNEL, RTMP_PT_USER_CONTROL,
                                     0, 44)) < 0)
        return ret;

    p = pkt.data;
    bytestream_put_be16(&p, 27);
    memcpy(p, rt->swfverification, 42);

    return rtmp_send_packet(rt, &pkt, 0);
}
