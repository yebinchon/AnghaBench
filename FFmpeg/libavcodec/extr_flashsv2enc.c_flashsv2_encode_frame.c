
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ frame_number; scalar_t__ gop_size; scalar_t__ keyint_min; TYPE_1__* priv_data; } ;
struct TYPE_18__ {int * linesize; int * data; } ;
struct TYPE_17__ {int size; int flags; int data; } ;
struct TYPE_16__ {scalar_t__ last_key_frame; int dist; scalar_t__ use15_7; scalar_t__ frame_size; } ;
typedef TYPE_1__ FlashSV2Context ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 scalar_t__ AV_INPUT_BUFFER_MIN_SIZE ;
 int AV_LOG_DEBUG ;
 int AV_PKT_FLAG_KEY ;
 int av_log (TYPE_4__*,int ,char*,scalar_t__) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,scalar_t__,int ) ;
 int new_key_frame (TYPE_1__* const) ;
 int optimum_dist (TYPE_1__* const) ;
 int recommend_keyframe (TYPE_1__* const,int*) ;
 int reconfigure_at_keyframe (TYPE_1__* const,int ,int ) ;
 int write_bitstream (TYPE_1__* const,int ,int ,int ,int,int) ;

__attribute__((used)) static int flashsv2_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                                 const AVFrame *p, int *got_packet)
{
    FlashSV2Context *const s = avctx->priv_data;
    int res;
    int keyframe = 0;

    if ((res = ff_alloc_packet2(avctx, pkt, s->frame_size + AV_INPUT_BUFFER_MIN_SIZE, 0)) < 0)
        return res;


    if (avctx->frame_number == 0)
        keyframe = 1;


    if (avctx->gop_size > 0) {
        if (avctx->frame_number >= s->last_key_frame + avctx->gop_size)
            keyframe = 1;
    }

    if (!keyframe
        && avctx->frame_number > s->last_key_frame + avctx->keyint_min) {
        recommend_keyframe(s, &keyframe);
        if (keyframe)
            av_log(avctx, AV_LOG_DEBUG, "Recommending key frame at frame %d\n", avctx->frame_number);
    }

    if (keyframe) {
        res = reconfigure_at_keyframe(s, p->data[0], p->linesize[0]);
        if (res)
            return res;
    }

    if (s->use15_7)
        s->dist = optimum_dist(s);

    res = write_bitstream(s, p->data[0], p->linesize[0], pkt->data, pkt->size, keyframe);

    if (keyframe) {
        new_key_frame(s);
        s->last_key_frame = avctx->frame_number;
        pkt->flags |= AV_PKT_FLAG_KEY;
        av_log(avctx, AV_LOG_DEBUG, "Inserting key frame at frame %d\n", avctx->frame_number);
    }

    pkt->size = res;
    *got_packet = 1;

    return 0;
}
