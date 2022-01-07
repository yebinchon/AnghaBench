
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int URLContext ;
struct TYPE_8__ {int nb_invokes; } ;
struct TYPE_7__ {int * data; } ;
typedef TYPE_1__ RTMPPacket ;
typedef TYPE_2__ RTMPContext ;


 int RTMP_PT_INVOKE ;
 int RTMP_SYSTEM_CHANNEL ;
 int ff_amf_write_null (int **) ;
 int ff_amf_write_number (int **,int ) ;
 int ff_amf_write_string (int **,char const*) ;
 int ff_rtmp_packet_create (TYPE_1__*,int ,int ,int ,scalar_t__) ;
 int rtmp_send_packet (TYPE_2__*,TYPE_1__*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int gen_fcsubscribe_stream(URLContext *s, RTMPContext *rt,
                                  const char *subscribe)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_SYSTEM_CHANNEL, RTMP_PT_INVOKE,
                                     0, 27 + strlen(subscribe))) < 0)
        return ret;

    p = pkt.data;
    ff_amf_write_string(&p, "FCSubscribe");
    ff_amf_write_number(&p, ++rt->nb_invokes);
    ff_amf_write_null(&p);
    ff_amf_write_string(&p, subscribe);

    return rtmp_send_packet(rt, &pkt, 1);
}
