
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int free_colours; int pal; } ;
typedef TYPE_1__ MSS12Context ;
typedef int ArithCoder ;


 int arith_get_bits (int *,int) ;
 int arith_get_number (int *,int ) ;

__attribute__((used)) static int decode_pal(MSS12Context *ctx, ArithCoder *acoder)
{
    int i, ncol, r, g, b;
    uint32_t *pal = ctx->pal + 256 - ctx->free_colours;

    if (!ctx->free_colours)
        return 0;

    ncol = arith_get_number(acoder, ctx->free_colours + 1);
    for (i = 0; i < ncol; i++) {
        r = arith_get_bits(acoder, 8);
        g = arith_get_bits(acoder, 8);
        b = arith_get_bits(acoder, 8);
        *pal++ = (0xFFU << 24) | (r << 16) | (g << 8) | b;
    }

    return !!ncol;
}
