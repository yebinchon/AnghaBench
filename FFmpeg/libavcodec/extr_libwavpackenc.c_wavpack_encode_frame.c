
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_13__ {scalar_t__ frame_size; TYPE_1__* priv_data; } ;
struct TYPE_12__ {scalar_t__ nb_samples; scalar_t__* data; } ;
struct TYPE_11__ {int duration; int pts; int size; } ;
struct TYPE_10__ {int afq; scalar_t__ got_output; int wv; int user_size; TYPE_2__* pkt; } ;
typedef TYPE_1__ LibWavpackContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int WavpackFlushSamples (int ) ;
 int WavpackGetErrorMessage (int ) ;
 int WavpackPackSamples (int ,int *,scalar_t__) ;
 int av_log (TYPE_4__*,int ,char*,int ) ;
 int ff_af_queue_add (int *,TYPE_3__ const*) ;
 int ff_af_queue_remove (int *,scalar_t__,int *,int *) ;

__attribute__((used)) static int wavpack_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                                const AVFrame *frame, int *got_output)
{
    LibWavpackContext *s = avctx->priv_data;
    int ret;

    s->got_output = 0;
    s->pkt = pkt;
    s->user_size = pkt->size;

    if (frame) {
        ret = ff_af_queue_add(&s->afq, frame);
        if (ret < 0)
            return ret;

        ret = WavpackPackSamples(s->wv, (int32_t*)frame->data[0], frame->nb_samples);
        if (!ret) {
            av_log(avctx, AV_LOG_ERROR, "Error encoding a frame: %s\n",
                   WavpackGetErrorMessage(s->wv));
            return AVERROR_UNKNOWN;
        }
    }

    if (!s->got_output &&
        (!frame || frame->nb_samples < avctx->frame_size)) {
        ret = WavpackFlushSamples(s->wv);
        if (!ret) {
            av_log(avctx, AV_LOG_ERROR, "Error flushing the encoder: %s\n",
                   WavpackGetErrorMessage(s->wv));
            return AVERROR_UNKNOWN;
        }
    }

    if (s->got_output) {
        ff_af_queue_remove(&s->afq, avctx->frame_size, &pkt->pts, &pkt->duration);
        *got_output = 1;
    }

    return 0;
}
