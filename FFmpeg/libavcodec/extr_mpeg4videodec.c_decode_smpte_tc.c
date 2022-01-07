
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int avctx; } ;
struct TYPE_5__ {TYPE_1__ m; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ Mpeg4DecContext ;
typedef int GetBitContext ;


 int check_marker (int ,int *,char*) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static void decode_smpte_tc(Mpeg4DecContext *ctx, GetBitContext *gb)
{
    MpegEncContext *s = &ctx->m;

    skip_bits(gb, 16);
    check_marker(s->avctx, gb, "after Time_code[63..48]");
    skip_bits(gb, 16);
    check_marker(s->avctx, gb, "after Time_code[47..32]");
    skip_bits(gb, 16);
    check_marker(s->avctx, gb, "after Time_code[31..16]");
    skip_bits(gb, 16);
    check_marker(s->avctx, gb, "after Time_code[15..0]");
    skip_bits(gb, 4);
}
