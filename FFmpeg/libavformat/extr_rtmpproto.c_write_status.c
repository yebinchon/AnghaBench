
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int statusmsg ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_12__ {int * nb_prev_pkt; int * prev_pkt; int out_chunk_size; int stream; } ;
struct TYPE_11__ {int size; int * data; int extra; int member_0; } ;
typedef TYPE_2__ RTMPPacket ;
typedef TYPE_3__ RTMPContext ;


 int AV_LOG_ERROR ;
 int RTMP_PKTDATA_DEFAULT_SIZE ;
 int RTMP_PT_INVOKE ;
 int RTMP_SYSTEM_CHANNEL ;
 int av_log (TYPE_1__*,int ,char*) ;
 int ff_amf_write_field_name (int **,char*) ;
 int ff_amf_write_null (int **) ;
 int ff_amf_write_number (int **,int ) ;
 int ff_amf_write_object_end (int **) ;
 int ff_amf_write_object_start (int **) ;
 int ff_amf_write_string (int **,char const*) ;
 int ff_rtmp_packet_create (TYPE_2__*,int ,int ,int ,int ) ;
 int ff_rtmp_packet_destroy (TYPE_2__*) ;
 int ff_rtmp_packet_write (int ,TYPE_2__*,int ,int *,int *) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int write_status(URLContext *s, RTMPPacket *pkt,
                        const char *status, const char *filename)
{
    RTMPContext *rt = s->priv_data;
    RTMPPacket spkt = { 0 };
    char statusmsg[128];
    uint8_t *pp;
    int ret;

    if ((ret = ff_rtmp_packet_create(&spkt, RTMP_SYSTEM_CHANNEL,
                                     RTMP_PT_INVOKE, 0,
                                     RTMP_PKTDATA_DEFAULT_SIZE)) < 0) {
        av_log(s, AV_LOG_ERROR, "Unable to create response packet\n");
        return ret;
    }

    pp = spkt.data;
    spkt.extra = pkt->extra;
    ff_amf_write_string(&pp, "onStatus");
    ff_amf_write_number(&pp, 0);
    ff_amf_write_null(&pp);

    ff_amf_write_object_start(&pp);
    ff_amf_write_field_name(&pp, "level");
    ff_amf_write_string(&pp, "status");
    ff_amf_write_field_name(&pp, "code");
    ff_amf_write_string(&pp, status);
    ff_amf_write_field_name(&pp, "description");
    snprintf(statusmsg, sizeof(statusmsg),
             "%s is now published", filename);
    ff_amf_write_string(&pp, statusmsg);
    ff_amf_write_field_name(&pp, "details");
    ff_amf_write_string(&pp, filename);
    ff_amf_write_object_end(&pp);

    spkt.size = pp - spkt.data;
    ret = ff_rtmp_packet_write(rt->stream, &spkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    ff_rtmp_packet_destroy(&spkt);

    return ret;
}
