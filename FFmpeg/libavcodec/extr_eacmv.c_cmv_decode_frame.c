
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_18__ {TYPE_1__* priv_data; } ;
struct TYPE_17__ {int key_frame; int pict_type; int * data; } ;
struct TYPE_16__ {int* data; int size; } ;
struct TYPE_15__ {int last_frame; int last2_frame; int palette; int avctx; int height; int width; } ;
typedef TYPE_1__ CmvContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVPALETTE_SIZE ;
 int AV_GET_BUFFER_FLAG_REF ;
 int AV_PICTURE_TYPE_I ;
 int AV_PICTURE_TYPE_P ;
 scalar_t__ AV_RB32 (int const*) ;
 scalar_t__ AV_RL32 (int const*) ;
 int EA_PREAMBLE_SIZE ;
 scalar_t__ MVIh_TAG ;
 int av_frame_move_ref (int ,int ) ;
 int av_frame_ref (int ,TYPE_3__*) ;
 int av_frame_unref (int ) ;
 int av_image_check_size (int ,int ,int ,int ) ;
 int cmv_decode_inter (TYPE_1__*,TYPE_3__*,int const*,int const*) ;
 int cmv_decode_intra (TYPE_1__*,TYPE_3__*,int const*,int const*) ;
 int cmv_process_header (TYPE_1__*,int const*,int const*) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int cmv_decode_frame(AVCodecContext *avctx,
                            void *data, int *got_frame,
                            AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    CmvContext *s = avctx->priv_data;
    const uint8_t *buf_end = buf + buf_size;
    AVFrame *frame = data;
    int ret;

    if (buf_end - buf < EA_PREAMBLE_SIZE)
        return AVERROR_INVALIDDATA;

    if (AV_RL32(buf)==MVIh_TAG||AV_RB32(buf)==MVIh_TAG) {
        unsigned size = AV_RL32(buf + 4);
        ret = cmv_process_header(s, buf+EA_PREAMBLE_SIZE, buf_end);
        if (ret < 0)
            return ret;
        if (size > buf_end - buf - EA_PREAMBLE_SIZE)
            return AVERROR_INVALIDDATA;
        buf += size;
    }

    if ((ret = av_image_check_size(s->width, s->height, 0, s->avctx)) < 0)
        return ret;

    if ((ret = ff_get_buffer(avctx, frame, AV_GET_BUFFER_FLAG_REF)) < 0)
        return ret;

    memcpy(frame->data[1], s->palette, AVPALETTE_SIZE);

    buf += EA_PREAMBLE_SIZE;
    if ((buf[0]&1)) {
        cmv_decode_inter(s, frame, buf+2, buf_end);
        frame->key_frame = 0;
        frame->pict_type = AV_PICTURE_TYPE_P;
    }else{
        frame->key_frame = 1;
        frame->pict_type = AV_PICTURE_TYPE_I;
        cmv_decode_intra(s, frame, buf+2, buf_end);
    }

    av_frame_unref(s->last2_frame);
    av_frame_move_ref(s->last2_frame, s->last_frame);
    if ((ret = av_frame_ref(s->last_frame, frame)) < 0)
        return ret;

    *got_frame = 1;

    return buf_size;
}
