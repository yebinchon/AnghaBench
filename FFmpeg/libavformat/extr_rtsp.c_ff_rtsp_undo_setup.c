
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ pb; scalar_t__ oformat; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int nb_rtsp_streams; scalar_t__ lower_transport; scalar_t__ transport; TYPE_1__** rtsp_streams; } ;
struct TYPE_11__ {int * rtp_handle; TYPE_3__* transport_priv; } ;
typedef TYPE_1__ RTSPStream ;
typedef TYPE_2__ RTSPState ;
typedef TYPE_3__ AVFormatContext ;


 scalar_t__ CONFIG_RTPDEC ;
 scalar_t__ CONFIG_RTSP_MUXER ;
 scalar_t__ RTSP_LOWER_TRANSPORT_TCP ;
 scalar_t__ RTSP_TRANSPORT_RDT ;
 scalar_t__ RTSP_TRANSPORT_RTP ;
 int av_write_trailer (TYPE_3__*) ;
 int avformat_free_context (TYPE_3__*) ;
 int avio_closep (scalar_t__*) ;
 int ff_rdt_parse_close (TYPE_3__*) ;
 int ff_rtp_parse_close (TYPE_3__*) ;
 int ff_rtsp_tcp_write_packet (TYPE_3__*,TYPE_1__*) ;
 int ffio_free_dyn_buf (scalar_t__*) ;
 int ffurl_close (int *) ;

void ff_rtsp_undo_setup(AVFormatContext *s, int send_packets)
{
    RTSPState *rt = s->priv_data;
    int i;

    for (i = 0; i < rt->nb_rtsp_streams; i++) {
        RTSPStream *rtsp_st = rt->rtsp_streams[i];
        if (!rtsp_st)
            continue;
        if (rtsp_st->transport_priv) {
            if (s->oformat) {
                AVFormatContext *rtpctx = rtsp_st->transport_priv;
                av_write_trailer(rtpctx);
                if (rt->lower_transport == RTSP_LOWER_TRANSPORT_TCP) {
                    if (CONFIG_RTSP_MUXER && rtpctx->pb && send_packets)
                        ff_rtsp_tcp_write_packet(s, rtsp_st);
                    ffio_free_dyn_buf(&rtpctx->pb);
                } else {
                    avio_closep(&rtpctx->pb);
                }
                avformat_free_context(rtpctx);
            } else if (CONFIG_RTPDEC && rt->transport == RTSP_TRANSPORT_RDT)
                ff_rdt_parse_close(rtsp_st->transport_priv);
            else if (CONFIG_RTPDEC && rt->transport == RTSP_TRANSPORT_RTP)
                ff_rtp_parse_close(rtsp_st->transport_priv);
        }
        rtsp_st->transport_priv = ((void*)0);
        if (rtsp_st->rtp_handle)
            ffurl_close(rtsp_st->rtp_handle);
        rtsp_st->rtp_handle = ((void*)0);
    }
}
