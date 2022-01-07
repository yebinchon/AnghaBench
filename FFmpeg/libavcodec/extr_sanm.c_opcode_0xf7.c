
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef size_t ptrdiff_t ;
struct TYPE_4__ {int pitch; int gb; int * codebook; int * frm0; } ;
typedef TYPE_1__ SANMVideoContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_bytes_left (int *) ;
 size_t bytestream2_get_byteu (int *) ;
 int bytestream2_get_le32u (int *) ;
 int draw_glyph (TYPE_1__*,int *,int,int ,int ,int,size_t) ;

__attribute__((used)) static int opcode_0xf7(SANMVideoContext *ctx, int cx, int cy, int block_size, ptrdiff_t pitch)
{
    uint16_t *dst = ctx->frm0 + cx + cy * ctx->pitch;

    if (block_size == 2) {
        uint32_t indices;

        if (bytestream2_get_bytes_left(&ctx->gb) < 4)
            return AVERROR_INVALIDDATA;

        indices = bytestream2_get_le32u(&ctx->gb);
        dst[0] = ctx->codebook[indices & 0xFF];
        indices >>= 8;
        dst[1] = ctx->codebook[indices & 0xFF];
        indices >>= 8;
        dst[pitch] = ctx->codebook[indices & 0xFF];
        indices >>= 8;
        dst[pitch + 1] = ctx->codebook[indices & 0xFF];
    } else {
        uint16_t fgcolor, bgcolor;
        int glyph;

        if (bytestream2_get_bytes_left(&ctx->gb) < 3)
            return AVERROR_INVALIDDATA;

        glyph = bytestream2_get_byteu(&ctx->gb);
        bgcolor = ctx->codebook[bytestream2_get_byteu(&ctx->gb)];
        fgcolor = ctx->codebook[bytestream2_get_byteu(&ctx->gb)];

        draw_glyph(ctx, dst, glyph, fgcolor, bgcolor, block_size, pitch);
    }
    return 0;
}
