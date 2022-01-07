
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int av_assert2 (int) ;
 int put_bits (int *,int,int) ;
 int set_ue_golomb (int *,int) ;

__attribute__((used)) static inline void set_te_golomb(PutBitContext *pb, int i, int range)
{
    av_assert2(range >= 1);
    av_assert2(i <= range);

    if (range == 2)
        put_bits(pb, 1, i ^ 1);
    else
        set_ue_golomb(pb, i);
}
