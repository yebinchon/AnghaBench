
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int av_assert2 (int) ;
 int av_log2 (int) ;
 int* ff_ue_golomb_len ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static inline void set_ue_golomb(PutBitContext *pb, int i)
{
    av_assert2(i >= 0);
    av_assert2(i <= 0xFFFE);

    if (i < 256)
        put_bits(pb, ff_ue_golomb_len[i], i + 1);
    else {
        int e = av_log2(i + 1);
        put_bits(pb, 2 * e + 1, i + 1);
    }
}
