
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_16__ {scalar_t__ last_bitrate; int allow_dtx; int mode; int state; } ;
struct TYPE_15__ {scalar_t__ bit_rate; int initial_padding; TYPE_4__* priv_data; } ;
struct TYPE_14__ {scalar_t__ pts; scalar_t__* data; } ;
struct TYPE_13__ {scalar_t__ pts; int size; int data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;
typedef TYPE_4__ AMRWBContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_NOPTS_VALUE ;
 int EINVAL ;
 int E_IF_encode (int ,int ,int const*,int ,int ) ;
 int MAX_PACKET_SIZE ;
 int av_log (TYPE_3__*,int ,char*) ;
 int ff_alloc_packet2 (TYPE_3__*,TYPE_1__*,int,int ) ;
 scalar_t__ ff_samples_to_time_base (TYPE_3__*,int ) ;
 int get_wb_bitrate_mode (scalar_t__,TYPE_3__*) ;

__attribute__((used)) static int amr_wb_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                               const AVFrame *frame, int *got_packet_ptr)
{
    AMRWBContext *s = avctx->priv_data;
    const int16_t *samples = (const int16_t *)frame->data[0];
    int size, ret;

    if ((ret = ff_alloc_packet2(avctx, avpkt, MAX_PACKET_SIZE, 0)) < 0)
        return ret;

    if (s->last_bitrate != avctx->bit_rate) {
        s->mode = get_wb_bitrate_mode(avctx->bit_rate, avctx);
        s->last_bitrate = avctx->bit_rate;
    }
    size = E_IF_encode(s->state, s->mode, samples, avpkt->data, s->allow_dtx);
    if (size <= 0 || size > MAX_PACKET_SIZE) {
        av_log(avctx, AV_LOG_ERROR, "Error encoding frame\n");
        return AVERROR(EINVAL);
    }

    if (frame->pts != AV_NOPTS_VALUE)
        avpkt->pts = frame->pts - ff_samples_to_time_base(avctx, avctx->initial_padding);

    avpkt->size = size;
    *got_packet_ptr = 1;
    return 0;
}
