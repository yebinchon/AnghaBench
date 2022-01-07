
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int height; int width; scalar_t__ pix_fmt; TYPE_2__* priv_data; } ;
struct TYPE_5__ {int mb_height; } ;
struct TYPE_6__ {int data_offset; int cid; int interlaced; int cur_field; int bit_depth; int is_444; int* msip; TYPE_1__ m; } ;
typedef TYPE_2__ DNXHDEncContext ;
typedef TYPE_3__ AVCodecContext ;


 scalar_t__ AV_PIX_FMT_YUV444P10 ;
 int AV_WB16 (int*,int) ;
 int AV_WB32 (int*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int dnxhd_write_header(AVCodecContext *avctx, uint8_t *buf)
{
    DNXHDEncContext *ctx = avctx->priv_data;

    memset(buf, 0, ctx->data_offset);


    AV_WB16(buf + 0x02, ctx->data_offset);
    if (ctx->cid >= 1270 && ctx->cid <= 1274)
        buf[4] = 0x03;
    else
        buf[4] = 0x01;

    buf[5] = ctx->interlaced ? ctx->cur_field + 2 : 0x01;
    buf[6] = 0x80;
    buf[7] = 0xa0;
    AV_WB16(buf + 0x18, avctx->height >> ctx->interlaced);
    AV_WB16(buf + 0x1a, avctx->width);
    AV_WB16(buf + 0x1d, avctx->height >> ctx->interlaced);

    buf[0x21] = ctx->bit_depth == 10 ? 0x58 : 0x38;
    buf[0x22] = 0x88 + (ctx->interlaced << 2);
    AV_WB32(buf + 0x28, ctx->cid);
    buf[0x2c] = (!ctx->interlaced << 7) | (ctx->is_444 << 6) | (avctx->pix_fmt == AV_PIX_FMT_YUV444P10);

    buf[0x5f] = 0x01;

    buf[0x167] = 0x02;
    AV_WB16(buf + 0x16a, ctx->m.mb_height * 4 + 4);
    AV_WB16(buf + 0x16c, ctx->m.mb_height);
    buf[0x16f] = 0x10;

    ctx->msip = buf + 0x170;
    return 0;
}
