
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* frame; int g; } ;
struct TYPE_4__ {int palette_has_changed; scalar_t__* data; } ;
typedef TYPE_2__ BethsoftvidContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_be24u (int *) ;
 int bytestream2_get_bytes_left (int *) ;

__attribute__((used)) static int set_palette(BethsoftvidContext *ctx)
{
    uint32_t *palette = (uint32_t *)ctx->frame->data[1];
    int a;

    if (bytestream2_get_bytes_left(&ctx->g) < 256*3)
        return AVERROR_INVALIDDATA;

    for(a = 0; a < 256; a++){
        palette[a] = 0xFFU << 24 | bytestream2_get_be24u(&ctx->g) * 4;
        palette[a] |= palette[a] >> 6 & 0x30303;
    }
    ctx->frame->palette_has_changed = 1;
    return 0;
}
