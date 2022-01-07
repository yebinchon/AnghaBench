
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int* linesize; int key_frame; int palette_has_changed; scalar_t__* data; int pict_type; } ;
struct TYPE_14__ {int height; int width; TYPE_1__* priv_data; } ;
struct TYPE_13__ {int size; int data; } ;
struct TYPE_12__ {int pal_stride; int keyframe; int pal; scalar_t__ corrupted; scalar_t__ pal_pic; } ;
struct TYPE_11__ {TYPE_8__* pic; int sc; TYPE_2__ ctx; } ;
typedef TYPE_1__ MSS1Context ;
typedef TYPE_2__ MSS12Context ;
typedef int GetBitContext ;
typedef int ArithCoder ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVPALETTE_SIZE ;
 int AV_PICTURE_TYPE_I ;
 int AV_PICTURE_TYPE_P ;
 int arith_get_bit (int *) ;
 int arith_init (int *,int *) ;
 int av_frame_ref (void*,TYPE_8__*) ;
 int decode_pal (TYPE_2__*,int *) ;
 scalar_t__ ff_mss12_decode_rect (int *,int *,int ,int ,int ,int) ;
 int ff_mss12_slicecontext_reset (int *) ;
 int ff_reget_buffer (TYPE_4__*,TYPE_8__*,int ) ;
 int init_get_bits8 (int *,int ,int) ;
 int memcpy (scalar_t__,int ,int ) ;

__attribute__((used)) static int mss1_decode_frame(AVCodecContext *avctx, void *data, int *got_frame,
                             AVPacket *avpkt)
{
    MSS1Context *ctx = avctx->priv_data;
    MSS12Context *c = &ctx->ctx;
    GetBitContext gb;
    ArithCoder acoder;
    int pal_changed = 0;
    int ret;

    if ((ret = init_get_bits8(&gb, avpkt->data, avpkt->size)) < 0)
        return ret;

    arith_init(&acoder, &gb);

    if ((ret = ff_reget_buffer(avctx, ctx->pic, 0)) < 0)
        return ret;

    c->pal_pic = ctx->pic->data[0] + ctx->pic->linesize[0] * (avctx->height - 1);
    c->pal_stride = -ctx->pic->linesize[0];
    c->keyframe = !arith_get_bit(&acoder);
    if (c->keyframe) {
        c->corrupted = 0;
        ff_mss12_slicecontext_reset(&ctx->sc);
        pal_changed = decode_pal(c, &acoder);
        ctx->pic->key_frame = 1;
        ctx->pic->pict_type = AV_PICTURE_TYPE_I;
    } else {
        if (c->corrupted)
            return AVERROR_INVALIDDATA;
        ctx->pic->key_frame = 0;
        ctx->pic->pict_type = AV_PICTURE_TYPE_P;
    }
    c->corrupted = ff_mss12_decode_rect(&ctx->sc, &acoder, 0, 0,
                                        avctx->width, avctx->height);
    if (c->corrupted)
        return AVERROR_INVALIDDATA;
    memcpy(ctx->pic->data[1], c->pal, AVPALETTE_SIZE);
    ctx->pic->palette_has_changed = pal_changed;

    if ((ret = av_frame_ref(data, ctx->pic)) < 0)
        return ret;

    *got_frame = 1;


    return avpkt->size;
}
