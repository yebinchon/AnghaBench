
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int size; int prev_frame; int palette; int const* buf; } ;
typedef TYPE_1__ VmdVideoContext ;
struct TYPE_15__ {TYPE_1__* priv_data; } ;
struct TYPE_14__ {int * data; } ;
struct TYPE_13__ {int size; int * data; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_GET_BUFFER_FLAG_REF ;
 int PALETTE_COUNT ;
 int av_frame_ref (int ,TYPE_3__*) ;
 int av_frame_unref (int ) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int memcpy (int ,int ,int) ;
 int vmd_decode (TYPE_1__*,TYPE_3__*) ;

__attribute__((used)) static int vmdvideo_decode_frame(AVCodecContext *avctx,
                                 void *data, int *got_frame,
                                 AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    VmdVideoContext *s = avctx->priv_data;
    AVFrame *frame = data;
    int ret;

    s->buf = buf;
    s->size = buf_size;

    if (buf_size < 16)
        return AVERROR_INVALIDDATA;

    if ((ret = ff_get_buffer(avctx, frame, AV_GET_BUFFER_FLAG_REF)) < 0)
        return ret;

    if ((ret = vmd_decode(s, frame)) < 0)
        return ret;


    memcpy(frame->data[1], s->palette, PALETTE_COUNT * 4);


    av_frame_unref(s->prev_frame);
    if ((ret = av_frame_ref(s->prev_frame, frame)) < 0)
        return ret;

    *got_frame = 1;


    return buf_size;
}
