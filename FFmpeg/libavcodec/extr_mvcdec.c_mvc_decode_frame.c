
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ codec_id; int height; int width; TYPE_1__* priv_data; } ;
struct TYPE_13__ {int key_frame; int pict_type; int * linesize; int * data; } ;
struct TYPE_12__ {int size; int data; } ;
struct TYPE_11__ {int vflip; } ;
typedef TYPE_1__ MvcContext ;
typedef int GetByteContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 scalar_t__ AV_CODEC_ID_MVC1 ;
 int AV_PICTURE_TYPE_I ;
 int bytestream2_init (int *,int ,int) ;
 int decode_mvc1 (TYPE_4__*,int *,int ,int ,int ,int ) ;
 int decode_mvc2 (TYPE_4__*,int *,int ,int ,int ,int ,int ) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;

__attribute__((used)) static int mvc_decode_frame(AVCodecContext *avctx, void *data, int *got_frame,
                            AVPacket *avpkt)
{
    MvcContext *s = avctx->priv_data;
    AVFrame *frame = data;
    GetByteContext gb;
    int ret;

    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    bytestream2_init(&gb, avpkt->data, avpkt->size);
    if (avctx->codec_id == AV_CODEC_ID_MVC1)
        ret = decode_mvc1(avctx, &gb, frame->data[0],
                          avctx->width, avctx->height, frame->linesize[0]);
    else
        ret = decode_mvc2(avctx, &gb, frame->data[0],
                          avctx->width, avctx->height, frame->linesize[0],
                          s->vflip);
    if (ret < 0)
        return ret;

    frame->pict_type = AV_PICTURE_TYPE_I;
    frame->key_frame = 1;

    *got_frame = 1;

    return avpkt->size;
}
