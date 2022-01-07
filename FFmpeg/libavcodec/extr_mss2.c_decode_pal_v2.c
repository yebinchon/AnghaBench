
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int pal; int free_colours; } ;
typedef TYPE_1__ MSS12Context ;


 int AVERROR_INVALIDDATA ;
 int AV_RB24 (int const*) ;

__attribute__((used)) static int decode_pal_v2(MSS12Context *ctx, const uint8_t *buf, int buf_size)
{
    int i, ncol;
    uint32_t *pal = ctx->pal + 256 - ctx->free_colours;

    if (!ctx->free_colours)
        return 0;

    ncol = *buf++;
    if (ncol > ctx->free_colours || buf_size < 2 + ncol * 3)
        return AVERROR_INVALIDDATA;
    for (i = 0; i < ncol; i++)
        *pal++ = AV_RB24(buf + 3 * i);

    return 1 + ncol * 3;
}
