
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int FFABS (int) ;
 int av_mod_uintp2 (int,int) ;
 int put_bits (int *,int const,int) ;

__attribute__((used)) static void put_alpha_diff(PutBitContext *pb, int cur, int prev, int abits)
{
    const int dbits = (abits == 8) ? 4 : 7;
    const int dsize = 1 << dbits - 1;
    int diff = cur - prev;

    diff = av_mod_uintp2(diff, abits);
    if (diff >= (1 << abits) - dsize)
        diff -= 1 << abits;
    if (diff < -dsize || diff > dsize || !diff) {
        put_bits(pb, 1, 1);
        put_bits(pb, abits, diff);
    } else {
        put_bits(pb, 1, 0);
        put_bits(pb, dbits - 1, FFABS(diff) - 1);
        put_bits(pb, 1, diff < 0);
    }
}
