
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int avctx; } ;
struct TYPE_5__ {scalar_t__ time_increment_bits; TYPE_1__ m; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ Mpeg4DecContext ;
typedef int GetBitContext ;


 int FFMIN (scalar_t__,int) ;
 int check_marker (int ,int *,char*) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;

__attribute__((used)) static int decode_new_pred(Mpeg4DecContext *ctx, GetBitContext *gb) {
    MpegEncContext *s = &ctx->m;
    int len = FFMIN(ctx->time_increment_bits + 3, 15);

    get_bits(gb, len);
    if (get_bits1(gb))
        get_bits(gb, len);
    check_marker(s->avctx, gb, "after new_pred");

    return 0;
}
