
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int bsf; int ctx; } ;
typedef TYPE_2__ librav1eContext ;
struct TYPE_21__ {int flags; int ticks_per_frame; TYPE_1__* internal; TYPE_2__* priv_data; } ;
struct TYPE_20__ {int pts; int dts; int flags; int data; } ;
struct TYPE_19__ {scalar_t__ frame_type; int input_frameno; int len; int data; } ;
struct TYPE_17__ {int draining; } ;
typedef TYPE_3__ RaPacket ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_EXTERNAL ;
 int AVERROR_UNKNOWN ;
 int AV_CODEC_FLAG_GLOBAL_HEADER ;
 int AV_CODEC_FLAG_PASS1 ;
 int AV_CODEC_FLAG_PASS2 ;
 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_KEY ;
 int EAGAIN ;





 scalar_t__ RA_FRAME_TYPE_KEY ;
 int av_bsf_receive_packet (int ,TYPE_4__*) ;
 int av_bsf_send_packet (int ,TYPE_4__*) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int av_new_packet (TYPE_4__*,int ) ;
 int av_packet_unref (TYPE_4__*) ;
 int get_stats (TYPE_5__*,int) ;
 int memcpy (int ,int ,int ) ;
 int rav1e_packet_unref (TYPE_3__*) ;
 int rav1e_receive_packet (int ,TYPE_3__**) ;
 int rav1e_status_to_str (int) ;
 int set_stats (TYPE_5__*) ;

__attribute__((used)) static int librav1e_receive_packet(AVCodecContext *avctx, AVPacket *pkt)
{
    librav1eContext *ctx = avctx->priv_data;
    RaPacket *rpkt = ((void*)0);
    int ret;

retry:

    if (avctx->flags & AV_CODEC_FLAG_PASS1) {
        int sret = get_stats(avctx, 0);
        if (sret < 0)
            return sret;
    } else if (avctx->flags & AV_CODEC_FLAG_PASS2) {
        int sret = set_stats(avctx);
        if (sret < 0)
            return sret;
    }

    ret = rav1e_receive_packet(ctx->ctx, &rpkt);
    switch (ret) {
    case 128:
        break;
    case 130:
        if (avctx->flags & AV_CODEC_FLAG_PASS1) {
            int sret = get_stats(avctx, 1);
            if (sret < 0)
                return sret;
        }
        return AVERROR_EOF;
    case 132:
        if (avctx->internal->draining)
            goto retry;
        return AVERROR(EAGAIN);
    case 129:
        if (avctx->internal->draining) {
            av_log(avctx, AV_LOG_ERROR, "Unexpected error when receiving packet after EOF.\n");
            return AVERROR_EXTERNAL;
        }
        return AVERROR(EAGAIN);
    case 131:
        av_log(avctx, AV_LOG_ERROR, "Could not encode frame: %s\n", rav1e_status_to_str(ret));
        return AVERROR_EXTERNAL;
    default:
        av_log(avctx, AV_LOG_ERROR, "Unknown return code %d from rav1e_receive_packet: %s\n", ret, rav1e_status_to_str(ret));
        return AVERROR_UNKNOWN;
    }

    ret = av_new_packet(pkt, rpkt->len);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Could not allocate packet.\n");
        rav1e_packet_unref(rpkt);
        return ret;
    }

    memcpy(pkt->data, rpkt->data, rpkt->len);

    if (rpkt->frame_type == RA_FRAME_TYPE_KEY)
        pkt->flags |= AV_PKT_FLAG_KEY;

    pkt->pts = pkt->dts = rpkt->input_frameno * avctx->ticks_per_frame;
    rav1e_packet_unref(rpkt);

    if (avctx->flags & AV_CODEC_FLAG_GLOBAL_HEADER) {
        int ret = av_bsf_send_packet(ctx->bsf, pkt);
        if (ret < 0) {
            av_log(avctx, AV_LOG_ERROR, "extradata extraction send failed.\n");
            av_packet_unref(pkt);
            return ret;
        }

        ret = av_bsf_receive_packet(ctx->bsf, pkt);
        if (ret < 0) {
            av_log(avctx, AV_LOG_ERROR, "extradata extraction receive failed.\n");
            av_packet_unref(pkt);
            return ret;
        }
    }

    return 0;
}
