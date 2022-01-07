
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int URLContext ;
struct TYPE_8__ {int stream_id; } ;
struct TYPE_7__ {int * data; int extra; } ;
typedef TYPE_1__ RTMPPacket ;
typedef TYPE_2__ RTMPContext ;


 int AV_LOG_DEBUG ;
 int RTMP_PT_INVOKE ;
 int av_log (int *,int ,char*,int ) ;
 int ff_amf_write_bool (int **,int) ;
 int ff_amf_write_null (int **) ;
 int ff_amf_write_number (int **,int ) ;
 int ff_amf_write_string (int **,char*) ;
 int ff_rtmp_packet_create (TYPE_1__*,int,int ,int ,int) ;
 int rtmp_send_packet (TYPE_2__*,TYPE_1__*,int) ;

__attribute__((used)) static int gen_pause(URLContext *s, RTMPContext *rt, int pause, uint32_t timestamp)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    av_log(s, AV_LOG_DEBUG, "Sending pause command for timestamp %d\n",
           timestamp);

    if ((ret = ff_rtmp_packet_create(&pkt, 3, RTMP_PT_INVOKE, 0, 29)) < 0)
        return ret;

    pkt.extra = rt->stream_id;

    p = pkt.data;
    ff_amf_write_string(&p, "pause");
    ff_amf_write_number(&p, 0);
    ff_amf_write_null(&p);
    ff_amf_write_bool(&p, pause);
    ff_amf_write_number(&p, timestamp);

    return rtmp_send_packet(rt, &pkt, 1);
}
