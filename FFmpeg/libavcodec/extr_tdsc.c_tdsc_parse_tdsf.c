
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int width; int height; int * data; } ;
struct TYPE_9__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int width; int height; TYPE_7__* refframe; int gbc; } ;
typedef TYPE_1__ TDSCContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int BITMAPINFOHEADER_SIZE ;
 int av_frame_get_buffer (TYPE_7__*,int) ;
 int av_log (TYPE_2__*,int ,char*,int,int,int,int) ;
 int bytestream2_get_le16 (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_skip (int *,int) ;
 int ff_set_dimensions (TYPE_2__*,int,int) ;
 int tdsc_decode_tiles (TYPE_2__*,int) ;

__attribute__((used)) static int tdsc_parse_tdsf(AVCodecContext *avctx, int number_tiles)
{
    TDSCContext *ctx = avctx->priv_data;
    int ret, w, h, init_refframe = !ctx->refframe->data[0];



    if (bytestream2_get_le32(&ctx->gbc) != BITMAPINFOHEADER_SIZE)
        return AVERROR_INVALIDDATA;


    w = bytestream2_get_le32(&ctx->gbc);
    h = -bytestream2_get_le32(&ctx->gbc);

    if (bytestream2_get_le16(&ctx->gbc) != 1 ||
        bytestream2_get_le16(&ctx->gbc) != 24)
        return AVERROR_INVALIDDATA;

    bytestream2_skip(&ctx->gbc, 24);


    if (avctx->width != w || avctx->height != h) {
        av_log(avctx, AV_LOG_DEBUG, "Size update %dx%d -> %d%d.\n",
               avctx->width, avctx->height, ctx->width, ctx->height);
        ret = ff_set_dimensions(avctx, w, h);
        if (ret < 0)
            return ret;
        init_refframe = 1;
    }
    ctx->refframe->width = ctx->width = w;
    ctx->refframe->height = ctx->height = h;


    if (init_refframe) {
        ret = av_frame_get_buffer(ctx->refframe, 32);
        if (ret < 0)
            return ret;
    }


    return tdsc_decode_tiles(avctx, number_tiles);
}
