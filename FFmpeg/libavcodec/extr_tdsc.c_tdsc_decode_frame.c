
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uLongf ;
struct TYPE_17__ {int width; scalar_t__ height; TYPE_1__* priv_data; } ;
struct TYPE_16__ {int key_frame; int pict_type; int * linesize; int * data; } ;
struct TYPE_15__ {int size; int data; } ;
struct TYPE_14__ {int width; scalar_t__ height; int deflatelen; int refframe; int gbc; int deflatebuffer; } ;
typedef TYPE_1__ TDSCContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int AV_PICTURE_TYPE_P ;
 int MKTAG (char,char,char,char) ;
 int TDSF_HEADER_SIZE ;
 int av_frame_copy (TYPE_3__*,int ) ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int av_reallocp (int *,int) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_init (int *,int ,int) ;
 int bytestream2_skip (int *,int) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int tdsc_paint_cursor (TYPE_4__*,int ,int ) ;
 int tdsc_parse_dtsm (TYPE_4__*) ;
 int tdsc_parse_tdsf (TYPE_4__*,int) ;
 int uncompress (int ,int*,int ,int) ;

__attribute__((used)) static int tdsc_decode_frame(AVCodecContext *avctx, void *data,
                             int *got_frame, AVPacket *avpkt)
{
    TDSCContext *ctx = avctx->priv_data;
    AVFrame *frame = data;
    int ret, tag_header, keyframe = 0;
    uLongf dlen;


    if (ctx->width != avctx->width || ctx->height != avctx->height) {
        ctx->deflatelen = avctx->width * avctx->height * (3 + 1);
        ret = av_reallocp(&ctx->deflatebuffer, ctx->deflatelen);
        if (ret < 0)
            return ret;
    }
    dlen = ctx->deflatelen;


    ret = uncompress(ctx->deflatebuffer, &dlen, avpkt->data, avpkt->size);
    if (ret) {
        av_log(avctx, AV_LOG_ERROR, "Deflate error %d.\n", ret);
        return AVERROR_UNKNOWN;
    }

    bytestream2_init(&ctx->gbc, ctx->deflatebuffer, dlen);


    if (bytestream2_get_bytes_left(&ctx->gbc) < 4 + 4) {
        av_log(avctx, AV_LOG_ERROR, "Frame is too small.\n");
        return AVERROR_INVALIDDATA;
    }


    tag_header = bytestream2_get_le32(&ctx->gbc);

    if (tag_header == MKTAG('T','D','S','F')) {
        int number_tiles;
        if (bytestream2_get_bytes_left(&ctx->gbc) < TDSF_HEADER_SIZE) {
            av_log(avctx, AV_LOG_ERROR, "TDSF tag is too small.\n");
            return AVERROR_INVALIDDATA;
        }

        number_tiles = bytestream2_get_le32(&ctx->gbc);

        bytestream2_skip(&ctx->gbc, 4);
        keyframe = bytestream2_get_le32(&ctx->gbc) == 0x30;

        ret = tdsc_parse_tdsf(avctx, number_tiles);
        if (ret < 0)
            return ret;


        if (bytestream2_get_bytes_left(&ctx->gbc) >= 4 + 4)
            tag_header = bytestream2_get_le32(&ctx->gbc);
    }


    if (tag_header == MKTAG('D','T','S','M')) {

        int tag_size = bytestream2_get_le32(&ctx->gbc);

        if (bytestream2_get_bytes_left(&ctx->gbc) < tag_size) {
            av_log(avctx, AV_LOG_ERROR, "DTSM tag is too small.\n");
            return AVERROR_INVALIDDATA;
        }

        ret = tdsc_parse_dtsm(avctx);
        if (ret < 0)
            return ret;
    }


    ret = ff_get_buffer(avctx, frame, 0);
    if (ret < 0)
        return ret;

    ret = av_frame_copy(frame, ctx->refframe);
    if (ret < 0)
        return ret;


    tdsc_paint_cursor(avctx, frame->data[0], frame->linesize[0]);


    if (keyframe) {
        frame->pict_type = AV_PICTURE_TYPE_I;
        frame->key_frame = 1;
    } else {
        frame->pict_type = AV_PICTURE_TYPE_P;
    }
    *got_frame = 1;

    return avpkt->size;
}
