
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int alpha_bits; } ;
typedef int PutBitContext ;
typedef TYPE_1__ ProresContext ;


 int flush_put_bits (int *) ;
 int put_alpha_diff (int *,int,int,int const) ;
 int put_alpha_run (int *,int) ;
 int put_bits_count (int *) ;

__attribute__((used)) static int encode_alpha_plane(ProresContext *ctx, PutBitContext *pb,
                              int mbs_per_slice, uint16_t *blocks,
                              int quant)
{
    const int abits = ctx->alpha_bits;
    const int mask = (1 << abits) - 1;
    const int num_coeffs = mbs_per_slice * 256;
    int saved_pos = put_bits_count(pb);
    int prev = mask, cur;
    int idx = 0;
    int run = 0;

    cur = blocks[idx++];
    put_alpha_diff(pb, cur, prev, abits);
    prev = cur;
    do {
        cur = blocks[idx++];
        if (cur != prev) {
            put_alpha_run (pb, run);
            put_alpha_diff(pb, cur, prev, abits);
            prev = cur;
            run = 0;
        } else {
            run++;
        }
    } while (idx < num_coeffs);
    if (run)
        put_alpha_run(pb, run);
    flush_put_bits(pb);
    return (put_bits_count(pb) - saved_pos) >> 3;
}
