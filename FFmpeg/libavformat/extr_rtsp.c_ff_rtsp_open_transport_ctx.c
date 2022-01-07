
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_22__ {scalar_t__ iformat; TYPE_4__** streams; scalar_t__ oformat; int ctx_flags; int max_delay; TYPE_2__* priv_data; } ;
struct TYPE_21__ {int index; int time_base; } ;
struct TYPE_20__ {int ssrc; } ;
struct TYPE_19__ {int reordering_queue_size; scalar_t__ lower_transport; scalar_t__ transport; } ;
struct TYPE_18__ {size_t stream_index; int crypto_params; scalar_t__* crypto_suite; TYPE_3__* transport_priv; int dynamic_handler; int dynamic_protocol_context; int ssrc; int sdp_payload_type; int * rtp_handle; } ;
typedef TYPE_1__ RTSPStream ;
typedef TYPE_2__ RTSPState ;
typedef TYPE_3__ RTPDemuxContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVFMTCTX_NOHEADER ;
 scalar_t__ CONFIG_RTPDEC ;
 scalar_t__ CONFIG_RTSP_MUXER ;
 int ENOMEM ;
 int RTP_REORDER_QUEUE_DEFAULT_SIZE ;
 scalar_t__ RTSP_LOWER_TRANSPORT_TCP ;
 int RTSP_TCP_MAX_PACKET_SIZE ;
 scalar_t__ RTSP_TRANSPORT_RAW ;
 scalar_t__ RTSP_TRANSPORT_RDT ;
 scalar_t__ RTSP_TRANSPORT_RTP ;
 TYPE_3__* ff_rdt_parse_open (TYPE_5__*,int ,int ,int ) ;
 int ff_rtp_chain_mux_open (TYPE_5__**,TYPE_5__*,TYPE_4__*,int *,int ,size_t) ;
 TYPE_3__* ff_rtp_parse_open (TYPE_5__*,TYPE_4__*,int ,int) ;
 int ff_rtp_parse_set_crypto (TYPE_3__*,scalar_t__*,int ) ;
 int ff_rtp_parse_set_dynamic_protocol (TYPE_3__*,int ,int ) ;

int ff_rtsp_open_transport_ctx(AVFormatContext *s, RTSPStream *rtsp_st)
{
    RTSPState *rt = s->priv_data;
    AVStream *st = ((void*)0);
    int reordering_queue_size = rt->reordering_queue_size;
    if (reordering_queue_size < 0) {
        if (rt->lower_transport == RTSP_LOWER_TRANSPORT_TCP || !s->max_delay)
            reordering_queue_size = 0;
        else
            reordering_queue_size = RTP_REORDER_QUEUE_DEFAULT_SIZE;
    }


    if (rtsp_st->stream_index >= 0)
        st = s->streams[rtsp_st->stream_index];
    if (!st)
        s->ctx_flags |= AVFMTCTX_NOHEADER;

    if (CONFIG_RTSP_MUXER && s->oformat && st) {
        int ret = ff_rtp_chain_mux_open((AVFormatContext **)&rtsp_st->transport_priv,
                                        s, st, rtsp_st->rtp_handle,
                                        RTSP_TCP_MAX_PACKET_SIZE,
                                        rtsp_st->stream_index);

        rtsp_st->rtp_handle = ((void*)0);
        if (ret < 0)
            return ret;
        st->time_base = ((AVFormatContext*)rtsp_st->transport_priv)->streams[0]->time_base;
    } else if (rt->transport == RTSP_TRANSPORT_RAW) {
        return 0;
    } else if (CONFIG_RTPDEC && rt->transport == RTSP_TRANSPORT_RDT && st)
        rtsp_st->transport_priv = ff_rdt_parse_open(s, st->index,
                                            rtsp_st->dynamic_protocol_context,
                                            rtsp_st->dynamic_handler);
    else if (CONFIG_RTPDEC)
        rtsp_st->transport_priv = ff_rtp_parse_open(s, st,
                                         rtsp_st->sdp_payload_type,
                                         reordering_queue_size);

    if (!rtsp_st->transport_priv) {
         return AVERROR(ENOMEM);
    } else if (CONFIG_RTPDEC && rt->transport == RTSP_TRANSPORT_RTP &&
               s->iformat) {
        RTPDemuxContext *rtpctx = rtsp_st->transport_priv;
        rtpctx->ssrc = rtsp_st->ssrc;
        if (rtsp_st->dynamic_handler) {
            ff_rtp_parse_set_dynamic_protocol(rtsp_st->transport_priv,
                                              rtsp_st->dynamic_protocol_context,
                                              rtsp_st->dynamic_handler);
        }
        if (rtsp_st->crypto_suite[0])
            ff_rtp_parse_set_crypto(rtsp_st->transport_priv,
                                    rtsp_st->crypto_suite,
                                    rtsp_st->crypto_params);
    }

    return 0;
}
