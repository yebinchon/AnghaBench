
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int URLContext ;
struct TYPE_8__ {char* playpath; int nb_invokes; } ;
struct TYPE_7__ {int * data; } ;
typedef TYPE_1__ RTMPPacket ;
typedef TYPE_2__ RTMPContext ;


 int AV_LOG_DEBUG ;
 int RTMP_PT_INVOKE ;
 int RTMP_SYSTEM_CHANNEL ;
 int av_log (int *,int ,char*) ;
 int ff_amf_write_null (int **) ;
 int ff_amf_write_number (int **,int ) ;
 int ff_amf_write_string (int **,char*) ;
 int ff_rtmp_packet_create (TYPE_1__*,int ,int ,int ,scalar_t__) ;
 int rtmp_send_packet (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int gen_fcunpublish_stream(URLContext *s, RTMPContext *rt)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_SYSTEM_CHANNEL, RTMP_PT_INVOKE,
                                     0, 27 + strlen(rt->playpath))) < 0)
        return ret;

    av_log(s, AV_LOG_DEBUG, "UnPublishing stream...\n");
    p = pkt.data;
    ff_amf_write_string(&p, "FCUnpublish");
    ff_amf_write_number(&p, ++rt->nb_invokes);
    ff_amf_write_null(&p);
    ff_amf_write_string(&p, rt->playpath);

    return rtmp_send_packet(rt, &pkt, 0);
}
