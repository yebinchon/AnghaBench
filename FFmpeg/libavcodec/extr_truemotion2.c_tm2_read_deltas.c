
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** deltas; int gb; int avctx; } ;
typedef TYPE_1__ TM2Context ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int TM2_DELTAS ;
 int av_assert2 (int) ;
 int av_log (int ,int ,char*,int,int) ;
 int get_bits (int *,int) ;
 int get_bits_long (int *,int) ;

__attribute__((used)) static int tm2_read_deltas(TM2Context *ctx, int stream_id)
{
    int d, mb;
    int i, v;

    d = get_bits(&ctx->gb, 9);
    mb = get_bits(&ctx->gb, 5);

    av_assert2(mb < 32);
    if ((d < 1) || (d > TM2_DELTAS) || (mb < 1)) {
        av_log(ctx->avctx, AV_LOG_ERROR, "Incorrect delta table: %i deltas x %i bits\n", d, mb);
        return AVERROR_INVALIDDATA;
    }

    for (i = 0; i < d; i++) {
        v = get_bits_long(&ctx->gb, mb);
        if (v & (1 << (mb - 1)))
            ctx->deltas[stream_id][i] = v - (1U << mb);
        else
            ctx->deltas[stream_id][i] = v;
    }
    for (; i < TM2_DELTAS; i++)
        ctx->deltas[stream_id][i] = 0;

    return 0;
}
