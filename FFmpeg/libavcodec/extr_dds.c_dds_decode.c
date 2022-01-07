
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_27__ {int width; int height; int coded_width; int coded_height; scalar_t__ pix_fmt; int (* execute2 ) (TYPE_5__*,int ,TYPE_4__*,int *,int ) ;int thread_count; TYPE_2__* priv_data; } ;
struct TYPE_26__ {int** data; int palette_has_changed; int height; int width; int key_frame; int pict_type; int * linesize; } ;
struct TYPE_25__ {int size; int data; } ;
struct TYPE_23__ {int buffer; } ;
struct TYPE_24__ {int tex_ratio; int bpp; scalar_t__ postproc; scalar_t__ paletted; int slice_count; int tex_data; scalar_t__ compressed; int texdsp; TYPE_1__ gbc; } ;
typedef TYPE_1__ GetByteContext ;
typedef TYPE_2__ DDSContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_PICTURE_TYPE_I ;
 scalar_t__ AV_PIX_FMT_PAL8 ;
 int AV_WN32 (int*,int) ;
 scalar_t__ DDS_NONE ;
 void* FFALIGN (int,int) ;
 int MKTAG (char,char,char,char) ;
 int TEXTURE_BLOCK_H ;
 int TEXTURE_BLOCK_W ;
 int av_clip (int ,int,int) ;
 int av_image_copy_plane (int*,int ,int ,int,int,int) ;
 int av_image_get_linesize (scalar_t__,int,int ) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int bytestream2_get_buffer (TYPE_1__*,int*,int) ;
 int bytestream2_get_byte (TYPE_1__*) ;
 int bytestream2_get_bytes_left (TYPE_1__*) ;
 int bytestream2_get_le32 (TYPE_1__*) ;
 int bytestream2_init (TYPE_1__*,int ,int) ;
 int bytestream2_skip (TYPE_1__*,int) ;
 int decompress_texture_thread ;
 int ff_get_buffer (TYPE_5__*,TYPE_4__*,int ) ;
 int ff_set_dimensions (TYPE_5__*,int,int) ;
 int ff_texturedsp_init (int *) ;
 int parse_pixel_format (TYPE_5__*) ;
 int run_postproc (TYPE_5__*,TYPE_4__*) ;
 int stub1 (TYPE_5__*,int ,TYPE_4__*,int *,int ) ;

__attribute__((used)) static int dds_decode(AVCodecContext *avctx, void *data,
                      int *got_frame, AVPacket *avpkt)
{
    DDSContext *ctx = avctx->priv_data;
    GetByteContext *gbc = &ctx->gbc;
    AVFrame *frame = data;
    int mipmap;
    int ret;
    int width, height;

    ff_texturedsp_init(&ctx->texdsp);
    bytestream2_init(gbc, avpkt->data, avpkt->size);

    if (bytestream2_get_bytes_left(gbc) < 128) {
        av_log(avctx, AV_LOG_ERROR, "Frame is too small (%d).\n",
               bytestream2_get_bytes_left(gbc));
        return AVERROR_INVALIDDATA;
    }

    if (bytestream2_get_le32(gbc) != MKTAG('D', 'D', 'S', ' ') ||
        bytestream2_get_le32(gbc) != 124) {
        av_log(avctx, AV_LOG_ERROR, "Invalid DDS header.\n");
        return AVERROR_INVALIDDATA;
    }

    bytestream2_skip(gbc, 4);

    height = bytestream2_get_le32(gbc);
    width = bytestream2_get_le32(gbc);
    ret = ff_set_dimensions(avctx, width, height);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Invalid image size %dx%d.\n",
               avctx->width, avctx->height);
        return ret;
    }


    avctx->coded_width = FFALIGN(avctx->width, TEXTURE_BLOCK_W);
    avctx->coded_height = FFALIGN(avctx->height, TEXTURE_BLOCK_H);

    bytestream2_skip(gbc, 4);
    bytestream2_skip(gbc, 4);
    mipmap = bytestream2_get_le32(gbc);
    if (mipmap != 0)
        av_log(avctx, AV_LOG_VERBOSE, "Found %d mipmaps (ignored).\n", mipmap);



    ret = parse_pixel_format(avctx);
    if (ret < 0)
        return ret;

    ret = ff_get_buffer(avctx, frame, 0);
    if (ret < 0)
        return ret;

    if (ctx->compressed) {
        int size = (avctx->coded_height / TEXTURE_BLOCK_H) *
                   (avctx->coded_width / TEXTURE_BLOCK_W) * ctx->tex_ratio;
        ctx->slice_count = av_clip(avctx->thread_count, 1,
                                   avctx->coded_height / TEXTURE_BLOCK_H);

        if (bytestream2_get_bytes_left(gbc) < size) {
            av_log(avctx, AV_LOG_ERROR,
                   "Compressed Buffer is too small (%d < %d).\n",
                   bytestream2_get_bytes_left(gbc), size);
            return AVERROR_INVALIDDATA;
        }


        ctx->tex_data = gbc->buffer;
        avctx->execute2(avctx, decompress_texture_thread, frame, ((void*)0), ctx->slice_count);
    } else if (!ctx->paletted && ctx->bpp == 4 && avctx->pix_fmt == AV_PIX_FMT_PAL8) {
        uint8_t *dst = frame->data[0];
        int x, y, i;


        bytestream2_get_buffer(gbc, frame->data[1], 16 * 4);
        for (i = 0; i < 16; i++) {
            AV_WN32(frame->data[1] + i*4,
                    (frame->data[1][2+i*4]<<0)+
                    (frame->data[1][1+i*4]<<8)+
                    (frame->data[1][0+i*4]<<16)+
                    ((unsigned)frame->data[1][3+i*4]<<24)
            );
        }
        frame->palette_has_changed = 1;

        if (bytestream2_get_bytes_left(gbc) < frame->height * frame->width / 2) {
            av_log(avctx, AV_LOG_ERROR, "Buffer is too small (%d < %d).\n",
                   bytestream2_get_bytes_left(gbc), frame->height * frame->width / 2);
            return AVERROR_INVALIDDATA;
        }

        for (y = 0; y < frame->height; y++) {
            for (x = 0; x < frame->width; x += 2) {
                uint8_t val = bytestream2_get_byte(gbc);
                dst[x ] = val & 0xF;
                dst[x + 1] = val >> 4;
            }
            dst += frame->linesize[0];
        }
    } else {
        int linesize = av_image_get_linesize(avctx->pix_fmt, frame->width, 0);

        if (ctx->paletted) {
            int i;

            bytestream2_get_buffer(gbc, frame->data[1], 256 * 4);
            for (i = 0; i < 256; i++)
                AV_WN32(frame->data[1] + i*4,
                        (frame->data[1][2+i*4]<<0)+
                        (frame->data[1][1+i*4]<<8)+
                        (frame->data[1][0+i*4]<<16)+
                        ((unsigned)frame->data[1][3+i*4]<<24)
                );

            frame->palette_has_changed = 1;
        }

        if (bytestream2_get_bytes_left(gbc) < frame->height * linesize) {
            av_log(avctx, AV_LOG_ERROR, "Buffer is too small (%d < %d).\n",
                   bytestream2_get_bytes_left(gbc), frame->height * linesize);
            return AVERROR_INVALIDDATA;
        }

        av_image_copy_plane(frame->data[0], frame->linesize[0],
                            gbc->buffer, linesize,
                            linesize, frame->height);
    }


    if (ctx->postproc != DDS_NONE)
        run_postproc(avctx, frame);


    frame->pict_type = AV_PICTURE_TYPE_I;
    frame->key_frame = 1;
    *got_frame = 1;

    return avpkt->size;
}
