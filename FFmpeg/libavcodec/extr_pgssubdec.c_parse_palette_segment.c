
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {scalar_t__ count; TYPE_1__* palette; } ;
struct TYPE_11__ {int height; TYPE_2__* priv_data; } ;
struct TYPE_10__ {TYPE_6__ palettes; } ;
struct TYPE_9__ {int id; int * clut; } ;
typedef TYPE_1__ PGSSubPalette ;
typedef TYPE_2__ PGSSubContext ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ MAX_EPOCH_PALETTES ;
 int MAX_NEG_CROP ;
 int RGBA (int,int,int,int) ;
 int YUV_TO_RGB1_CCIR (int,int) ;
 int YUV_TO_RGB1_CCIR_BT709 (int,int) ;
 int YUV_TO_RGB2_CCIR (int,int,int,int) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int bytestream_get_byte (int const**) ;
 int * ff_crop_tab ;
 int ff_dlog (TYPE_3__*,char*,int,int,int,int,int) ;
 TYPE_1__* find_palette (int,TYPE_6__*) ;

__attribute__((used)) static int parse_palette_segment(AVCodecContext *avctx,
                                  const uint8_t *buf, int buf_size)
{
    PGSSubContext *ctx = avctx->priv_data;
    PGSSubPalette *palette;

    const uint8_t *buf_end = buf + buf_size;
    const uint8_t *cm = ff_crop_tab + MAX_NEG_CROP;
    int color_id;
    int y, cb, cr, alpha;
    int r, g, b, r_add, g_add, b_add;
    int id;

    id = bytestream_get_byte(&buf);
    palette = find_palette(id, &ctx->palettes);
    if (!palette) {
        if (ctx->palettes.count >= MAX_EPOCH_PALETTES) {
            av_log(avctx, AV_LOG_ERROR, "Too many palettes in epoch\n");
            return AVERROR_INVALIDDATA;
        }
        palette = &ctx->palettes.palette[ctx->palettes.count++];
        palette->id = id;
    }


    buf += 1;

    while (buf < buf_end) {
        color_id = bytestream_get_byte(&buf);
        y = bytestream_get_byte(&buf);
        cr = bytestream_get_byte(&buf);
        cb = bytestream_get_byte(&buf);
        alpha = bytestream_get_byte(&buf);


        if (avctx->height <= 0 || avctx->height > 576) {
            YUV_TO_RGB1_CCIR_BT709(cb, cr);
        } else {
            YUV_TO_RGB1_CCIR(cb, cr);
        }

        YUV_TO_RGB2_CCIR(r, g, b, y);

        ff_dlog(avctx, "Color %d := (%d,%d,%d,%d)\n", color_id, r, g, b, alpha);


        palette->clut[color_id] = RGBA(r,g,b,alpha);
    }
    return 0;
}
