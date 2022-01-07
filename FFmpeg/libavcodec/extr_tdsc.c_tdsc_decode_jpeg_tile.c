
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ format; int * linesize; int * data; } ;
struct TYPE_14__ {int err_recognition; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int size; int data; } ;
struct TYPE_12__ {TYPE_7__* jpgframe; TYPE_1__* refframe; int jpeg_avctx; int tilebuffer; } ;
struct TYPE_11__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_2__ TDSCContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_EF_EXPLODE ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_YUVJ420P ;
 int av_frame_unref (TYPE_7__*) ;
 int av_init_packet (TYPE_3__*) ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int avcodec_receive_frame (int ,TYPE_7__*) ;
 int avcodec_send_packet (int ,TYPE_3__*) ;
 int tdsc_blit (scalar_t__,int,int ,int ,int ,int ,int ,int,int) ;

__attribute__((used)) static int tdsc_decode_jpeg_tile(AVCodecContext *avctx, int tile_size,
                                 int x, int y, int w, int h)
{
    TDSCContext *ctx = avctx->priv_data;
    AVPacket jpkt;
    int ret;


    av_init_packet(&jpkt);
    jpkt.data = ctx->tilebuffer;
    jpkt.size = tile_size;

    ret = avcodec_send_packet(ctx->jpeg_avctx, &jpkt);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Error submitting a packet for decoding\n");
        return ret;
    }

    ret = avcodec_receive_frame(ctx->jpeg_avctx, ctx->jpgframe);
    if (ret < 0 || ctx->jpgframe->format != AV_PIX_FMT_YUVJ420P) {
        av_log(avctx, AV_LOG_ERROR,
               "JPEG decoding error (%d).\n", ret);


        if (avctx->err_recognition & AV_EF_EXPLODE)
            return AVERROR_INVALIDDATA;
        else
            return 0;
    }


    tdsc_blit(ctx->refframe->data[0] + x * 3 + ctx->refframe->linesize[0] * y,
              ctx->refframe->linesize[0],
              ctx->jpgframe->data[0], ctx->jpgframe->linesize[0],
              ctx->jpgframe->data[1], ctx->jpgframe->data[2],
              ctx->jpgframe->linesize[1], w, h);

    av_frame_unref(ctx->jpgframe);

    return 0;
}
