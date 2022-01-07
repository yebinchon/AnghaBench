
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_21__ {scalar_t__ current_input_buffer; int codec; } ;
struct TYPE_20__ {TYPE_1__* priv_data; } ;
struct TYPE_19__ {scalar_t__ size; int data; int member_0; } ;
struct TYPE_18__ {TYPE_6__* ctx; TYPE_2__ buffered_pkt; scalar_t__ amlogic_mpeg2_api23_workaround; scalar_t__ delay_flush; } ;
typedef TYPE_1__ MediaCodecH264DecContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_WARNING ;
 int EAGAIN ;
 int av_log (TYPE_3__*,int ,char*,int,scalar_t__) ;
 int av_packet_unref (TYPE_2__*) ;
 scalar_t__ ff_AMediaCodec_dequeueInputBuffer (int ,int ) ;
 int ff_decode_get_packet (TYPE_3__*,TYPE_2__*) ;
 int ff_mediacodec_dec_flush (TYPE_3__*,TYPE_6__*) ;
 scalar_t__ ff_mediacodec_dec_is_flushing (TYPE_3__*,TYPE_6__*) ;
 int ff_mediacodec_dec_receive (TYPE_3__*,TYPE_6__*,int *,int) ;
 int ff_mediacodec_dec_send (TYPE_3__*,TYPE_6__*,TYPE_2__*,int) ;

__attribute__((used)) static int mediacodec_receive_frame(AVCodecContext *avctx, AVFrame *frame)
{
    MediaCodecH264DecContext *s = avctx->priv_data;
    int ret;
    ssize_t index;



    if (s->delay_flush && ff_mediacodec_dec_is_flushing(avctx, s->ctx)) {
        if (!ff_mediacodec_dec_flush(avctx, s->ctx)) {
            return AVERROR(EAGAIN);
        }
    }


    ret = ff_mediacodec_dec_receive(avctx, s->ctx, frame, 0);
    if (ret != AVERROR(EAGAIN))
        return ret;


    while (1) {
        if (s->ctx->current_input_buffer < 0) {

            index = ff_AMediaCodec_dequeueInputBuffer(s->ctx->codec, 0);
            if (index < 0) {

                return ff_mediacodec_dec_receive(avctx, s->ctx, frame, 1);
            }
            s->ctx->current_input_buffer = index;
        }


        if (s->buffered_pkt.size > 0) {
            ret = ff_mediacodec_dec_send(avctx, s->ctx, &s->buffered_pkt, 0);
            if (ret >= 0) {
                s->buffered_pkt.size -= ret;
                s->buffered_pkt.data += ret;
                if (s->buffered_pkt.size <= 0) {
                    av_packet_unref(&s->buffered_pkt);
                } else {
                    av_log(avctx, AV_LOG_WARNING,
                           "could not send entire packet in single input buffer (%d < %d)\n",
                           ret, s->buffered_pkt.size+ret);
                }
            } else if (ret < 0 && ret != AVERROR(EAGAIN)) {
                return ret;
            }

            if (s->amlogic_mpeg2_api23_workaround && s->buffered_pkt.size <= 0) {

            } else {

                continue;
            }
        }


        ret = ff_decode_get_packet(avctx, &s->buffered_pkt);
        if (ret == AVERROR_EOF) {
            AVPacket null_pkt = { 0 };
            ret = ff_mediacodec_dec_send(avctx, s->ctx, &null_pkt, 1);
            if (ret < 0)
                return ret;
            return ff_mediacodec_dec_receive(avctx, s->ctx, frame, 1);
        } else if (ret == AVERROR(EAGAIN) && s->ctx->current_input_buffer < 0) {
            return ff_mediacodec_dec_receive(avctx, s->ctx, frame, 1);
        } else if (ret < 0) {
            return ret;
        }
    }

    return AVERROR(EAGAIN);
}
