
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef size_t ptrdiff_t ;
struct TYPE_4__ {int pitch; int gb; int * frm0; } ;
typedef TYPE_1__ SANMVideoContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;
 int bytestream2_get_le16u (int *) ;
 int draw_glyph (TYPE_1__*,int *,int,int ,int ,int,size_t) ;

__attribute__((used)) static int opcode_0xf8(SANMVideoContext *ctx, int cx, int cy, int block_size, ptrdiff_t pitch)
{
    uint16_t *dst = ctx->frm0 + cx + cy * ctx->pitch;

    if (block_size == 2) {
        if (bytestream2_get_bytes_left(&ctx->gb) < 8)
            return AVERROR_INVALIDDATA;

        dst[0] = bytestream2_get_le16u(&ctx->gb);
        dst[1] = bytestream2_get_le16u(&ctx->gb);
        dst[pitch] = bytestream2_get_le16u(&ctx->gb);
        dst[pitch + 1] = bytestream2_get_le16u(&ctx->gb);
    } else {
        uint16_t fgcolor, bgcolor;
        int glyph;

        if (bytestream2_get_bytes_left(&ctx->gb) < 5)
            return AVERROR_INVALIDDATA;

        glyph = bytestream2_get_byteu(&ctx->gb);
        bgcolor = bytestream2_get_le16u(&ctx->gb);
        fgcolor = bytestream2_get_le16u(&ctx->gb);

        draw_glyph(ctx, dst, glyph, fgcolor, bgcolor, block_size, pitch);
    }
    return 0;
}
