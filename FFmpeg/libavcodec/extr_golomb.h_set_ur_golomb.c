
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int av_assert2 (int) ;
 int av_mod_uintp2 (int,int) ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static inline void set_ur_golomb(PutBitContext *pb, int i, int k, int limit,
                                 int esc_len)
{
    int e;

    av_assert2(i >= 0);

    e = i >> k;
    if (e < limit)
        put_bits(pb, e + k + 1, (1 << k) + av_mod_uintp2(i, k));
    else
        put_bits(pb, limit + esc_len, i - limit + 1);
}
