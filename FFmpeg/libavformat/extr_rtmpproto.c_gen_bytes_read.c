
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int URLContext ;
struct TYPE_8__ {int bytes_read; } ;
struct TYPE_7__ {int * data; } ;
typedef TYPE_1__ RTMPPacket ;
typedef TYPE_2__ RTMPContext ;


 int RTMP_NETWORK_CHANNEL ;
 int RTMP_PT_BYTES_READ ;
 int bytestream_put_be32 (int **,int ) ;
 int ff_rtmp_packet_create (TYPE_1__*,int ,int ,int ,int) ;
 int rtmp_send_packet (TYPE_2__*,TYPE_1__*,int ) ;

__attribute__((used)) static int gen_bytes_read(URLContext *s, RTMPContext *rt, uint32_t ts)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_NETWORK_CHANNEL, RTMP_PT_BYTES_READ,
                                     ts, 4)) < 0)
        return ret;

    p = pkt.data;
    bytestream_put_be32(&p, rt->bytes_read);

    return rtmp_send_packet(rt, &pkt, 0);
}
