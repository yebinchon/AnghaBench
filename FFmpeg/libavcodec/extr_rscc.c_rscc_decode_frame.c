
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_22__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uLongf ;
typedef int int64_t ;
struct TYPE_29__ {int* linesize; int ** data; } ;
struct TYPE_28__ {int width; int height; scalar_t__ pix_fmt; int discard_damaged_percentage; TYPE_1__* priv_data; } ;
struct TYPE_27__ {int key_frame; int palette_has_changed; int const** data; int pict_type; } ;
struct TYPE_26__ {int size; int * data; } ;
struct TYPE_25__ {int * buffer; } ;
struct TYPE_24__ {int x; int w; int y; int h; } ;
struct TYPE_23__ {int component_size; int inflated_size; int valid_pixels; int const* palette; TYPE_9__* reference; TYPE_22__* tiles; int * inflated_buf; TYPE_2__ gbc; int tiles_size; } ;
typedef TYPE_1__ RsccContext ;
typedef TYPE_2__ GetByteContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_UNKNOWN ;
 int AVPALETTE_SIZE ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int AV_PICTURE_TYPE_P ;
 scalar_t__ AV_PIX_FMT_PAL8 ;
 int AV_PKT_DATA_PALETTE ;
 int ENOMEM ;
 int INT_MAX ;
 int TILE_SIZE ;
 int av_fast_malloc (TYPE_22__**,int *,int) ;
 int av_frame_ref (TYPE_4__*,TYPE_9__*) ;
 int av_free (int *) ;
 int av_image_copy_plane (int *,int,int const*,int,int,int) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int * av_malloc (int) ;
 int * av_packet_get_side_data (TYPE_3__*,int ,int*) ;
 int bytestream2_get_byte (TYPE_2__*) ;
 int bytestream2_get_bytes_left (TYPE_2__*) ;
 void* bytestream2_get_le16 (TYPE_2__*) ;
 int bytestream2_get_le24 (TYPE_2__*) ;
 int bytestream2_get_le32 (TYPE_2__*) ;
 int bytestream2_init (TYPE_2__*,int *,int) ;
 int bytestream2_skip (TYPE_2__*,int) ;
 int ff_dlog (TYPE_5__*,char*,int,...) ;
 int ff_reget_buffer (TYPE_5__*,TYPE_9__*,int ) ;
 int memcpy (int const*,int const*,int) ;
 int uncompress (int *,int*,int *,int) ;

__attribute__((used)) static int rscc_decode_frame(AVCodecContext *avctx, void *data,
                                     int *got_frame, AVPacket *avpkt)
{
    RsccContext *ctx = avctx->priv_data;
    GetByteContext *gbc = &ctx->gbc;
    GetByteContext tiles_gbc;
    AVFrame *frame = data;
    const uint8_t *pixels, *raw;
    uint8_t *inflated_tiles = ((void*)0);
    int tiles_nb, packed_size, pixel_size = 0;
    int i, ret = 0;

    bytestream2_init(gbc, avpkt->data, avpkt->size);


    if (bytestream2_get_bytes_left(gbc) < 12) {
        av_log(avctx, AV_LOG_ERROR, "Packet too small (%d)\n", avpkt->size);
        return AVERROR_INVALIDDATA;
    }


    tiles_nb = bytestream2_get_le16(gbc);

    if (tiles_nb == 0) {
        av_log(avctx, AV_LOG_DEBUG, "no tiles\n");
        return avpkt->size;
    }

    av_fast_malloc(&ctx->tiles, &ctx->tiles_size,
                   tiles_nb * sizeof(*ctx->tiles));
    if (!ctx->tiles) {
        ret = AVERROR(ENOMEM);
        goto end;
    }

    av_log(avctx, AV_LOG_DEBUG, "Frame with %d tiles.\n", tiles_nb);




    if (tiles_nb > 5) {
        uLongf packed_tiles_size;

        if (tiles_nb < 32)
            packed_tiles_size = bytestream2_get_byte(gbc);
        else
            packed_tiles_size = bytestream2_get_le16(gbc);

        ff_dlog(avctx, "packed tiles of size %lu.\n", packed_tiles_size);


        if (packed_tiles_size != tiles_nb * TILE_SIZE) {
            uLongf length = tiles_nb * TILE_SIZE;

            if (bytestream2_get_bytes_left(gbc) < packed_tiles_size) {
                ret = AVERROR_INVALIDDATA;
                goto end;
            }

            inflated_tiles = av_malloc(length);
            if (!inflated_tiles) {
                ret = AVERROR(ENOMEM);
                goto end;
            }

            ret = uncompress(inflated_tiles, &length,
                             gbc->buffer, packed_tiles_size);
            if (ret) {
                av_log(avctx, AV_LOG_ERROR, "Tile deflate error %d.\n", ret);
                ret = AVERROR_UNKNOWN;
                goto end;
            }



            bytestream2_skip(gbc, packed_tiles_size);
            bytestream2_init(&tiles_gbc, inflated_tiles, length);
            gbc = &tiles_gbc;
        }
    }


    for (i = 0; i < tiles_nb; i++) {
        ctx->tiles[i].x = bytestream2_get_le16(gbc);
        ctx->tiles[i].w = bytestream2_get_le16(gbc);
        ctx->tiles[i].y = bytestream2_get_le16(gbc);
        ctx->tiles[i].h = bytestream2_get_le16(gbc);

        if (pixel_size + ctx->tiles[i].w * (int64_t)ctx->tiles[i].h * ctx->component_size > INT_MAX) {
            av_log(avctx, AV_LOG_ERROR, "Invalid tile dimensions\n");
            ret = AVERROR_INVALIDDATA;
            goto end;
        }

        pixel_size += ctx->tiles[i].w * ctx->tiles[i].h * ctx->component_size;

        ff_dlog(avctx, "tile %d orig(%d,%d) %dx%d.\n", i,
                ctx->tiles[i].x, ctx->tiles[i].y,
                ctx->tiles[i].w, ctx->tiles[i].h);

        if (ctx->tiles[i].w == 0 || ctx->tiles[i].h == 0) {
            av_log(avctx, AV_LOG_ERROR,
                   "invalid tile %d at (%d.%d) with size %dx%d.\n", i,
                   ctx->tiles[i].x, ctx->tiles[i].y,
                   ctx->tiles[i].w, ctx->tiles[i].h);
            ret = AVERROR_INVALIDDATA;
            goto end;
        } else if (ctx->tiles[i].x + ctx->tiles[i].w > avctx->width ||
                   ctx->tiles[i].y + ctx->tiles[i].h > avctx->height) {
            av_log(avctx, AV_LOG_ERROR,
                   "out of bounds tile %d at (%d.%d) with size %dx%d.\n", i,
                   ctx->tiles[i].x, ctx->tiles[i].y,
                   ctx->tiles[i].w, ctx->tiles[i].h);
            ret = AVERROR_INVALIDDATA;
            goto end;
        }
    }


    gbc = &ctx->gbc;


    if (pixel_size < 0x100)
        packed_size = bytestream2_get_byte(gbc);
    else if (pixel_size < 0x10000)
        packed_size = bytestream2_get_le16(gbc);
    else if (pixel_size < 0x1000000)
        packed_size = bytestream2_get_le24(gbc);
    else
        packed_size = bytestream2_get_le32(gbc);

    ff_dlog(avctx, "pixel_size %d packed_size %d.\n", pixel_size, packed_size);

    if (packed_size < 0) {
        av_log(avctx, AV_LOG_ERROR, "Invalid tile size %d\n", packed_size);
        ret = AVERROR_INVALIDDATA;
        goto end;
    }


    if (pixel_size == packed_size) {
        if (bytestream2_get_bytes_left(gbc) < pixel_size) {
            av_log(avctx, AV_LOG_ERROR, "Insufficient input for %d\n", pixel_size);
            ret = AVERROR_INVALIDDATA;
            goto end;
        }
        pixels = gbc->buffer;
    } else {
        uLongf len = ctx->inflated_size;
        if (bytestream2_get_bytes_left(gbc) < packed_size) {
            av_log(avctx, AV_LOG_ERROR, "Insufficient input for %d\n", packed_size);
            ret = AVERROR_INVALIDDATA;
            goto end;
        }
        ret = uncompress(ctx->inflated_buf, &len, gbc->buffer, packed_size);
        if (ret) {
            av_log(avctx, AV_LOG_ERROR, "Pixel deflate error %d.\n", ret);
            ret = AVERROR_UNKNOWN;
            goto end;
        }
        pixels = ctx->inflated_buf;
    }


    ret = ff_reget_buffer(avctx, ctx->reference, 0);
    if (ret < 0)
        goto end;


    raw = pixels;
    for (i = 0; i < tiles_nb; i++) {
        uint8_t *dst = ctx->reference->data[0] + ctx->reference->linesize[0] *
                       (avctx->height - ctx->tiles[i].y - 1) +
                       ctx->tiles[i].x * ctx->component_size;
        av_image_copy_plane(dst, -1 * ctx->reference->linesize[0],
                            raw, ctx->tiles[i].w * ctx->component_size,
                            ctx->tiles[i].w * ctx->component_size,
                            ctx->tiles[i].h);
        raw += ctx->tiles[i].w * ctx->component_size * ctx->tiles[i].h;
    }


    ret = av_frame_ref(frame, ctx->reference);
    if (ret < 0)
        goto end;


    if (pixel_size == ctx->inflated_size) {
        frame->pict_type = AV_PICTURE_TYPE_I;
        frame->key_frame = 1;
    } else {
        frame->pict_type = AV_PICTURE_TYPE_P;
    }


    if (avctx->pix_fmt == AV_PIX_FMT_PAL8) {
        int size;
        const uint8_t *palette = av_packet_get_side_data(avpkt,
                                                         AV_PKT_DATA_PALETTE,
                                                         &size);
        if (palette && size == AVPALETTE_SIZE) {
            frame->palette_has_changed = 1;
            memcpy(ctx->palette, palette, AVPALETTE_SIZE);
        } else if (palette) {
            av_log(avctx, AV_LOG_ERROR, "Palette size %d is wrong\n", size);
        }
        memcpy (frame->data[1], ctx->palette, AVPALETTE_SIZE);
    }

    if (ctx->valid_pixels < ctx->inflated_size)
        ctx->valid_pixels += pixel_size;
    if (ctx->valid_pixels >= ctx->inflated_size * (100 - avctx->discard_damaged_percentage) / 100)
        *got_frame = 1;

    ret = avpkt->size;
end:
    av_free(inflated_tiles);
    return ret;
}
