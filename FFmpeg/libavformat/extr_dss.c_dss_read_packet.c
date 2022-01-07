
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {scalar_t__ audio_codec; } ;
typedef TYPE_1__ DSSDemuxContext ;
typedef int AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ DSS_ACODEC_DSS_SP ;
 int dss_723_1_read_packet (TYPE_2__*,int *) ;
 int dss_sp_read_packet (TYPE_2__*,int *) ;

__attribute__((used)) static int dss_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    DSSDemuxContext *ctx = s->priv_data;

    if (ctx->audio_codec == DSS_ACODEC_DSS_SP)
        return dss_sp_read_packet(s, pkt);
    else
        return dss_723_1_read_packet(s, pkt);
}
