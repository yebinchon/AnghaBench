
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int gop_size; TYPE_1__* priv_data; } ;
struct TYPE_15__ {int quality; } ;
struct TYPE_14__ {int flags; scalar_t__ data; scalar_t__ size; } ;
struct TYPE_13__ {int lambda; int width; int height; int framesSinceKeyframe; scalar_t__ out_buf; scalar_t__ first_frame; int last_frame; int current_frame; TYPE_3__ const* frame_to_enc; TYPE_4__* avctx; } ;
typedef TYPE_1__ RoqContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AV_PKT_FLAG_KEY ;
 int ROQ_LAMBDA_SCALE ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,int,int ) ;
 int ff_get_buffer (TYPE_4__*,int ,int ) ;
 int roq_encode_video (TYPE_1__*) ;
 int roq_write_video_info_chunk (TYPE_1__*) ;

__attribute__((used)) static int roq_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                            const AVFrame *frame, int *got_packet)
{
    RoqContext *enc = avctx->priv_data;
    int size, ret;

    enc->avctx = avctx;

    enc->frame_to_enc = frame;

    if (frame->quality)
        enc->lambda = frame->quality - 1;
    else
        enc->lambda = 2*ROQ_LAMBDA_SCALE;



    size = ((enc->width * enc->height / 64) * 138 + 7) / 8 + 256 * (6 + 4) + 8;
    if ((ret = ff_alloc_packet2(avctx, pkt, size, 0)) < 0)
        return ret;
    enc->out_buf = pkt->data;


    if (enc->framesSinceKeyframe == avctx->gop_size)
        enc->framesSinceKeyframe = 0;

    if (enc->first_frame) {


        if ((ret = ff_get_buffer(avctx, enc->current_frame, 0)) < 0 ||
            (ret = ff_get_buffer(avctx, enc->last_frame, 0)) < 0)
            return ret;


        roq_write_video_info_chunk(enc);

        enc->first_frame = 0;
    }


    ret = roq_encode_video(enc);
    if (ret < 0)
        return ret;

    pkt->size = enc->out_buf - pkt->data;
    if (enc->framesSinceKeyframe == 1)
        pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;

    return 0;
}
