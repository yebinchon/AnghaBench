
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int av_assert2 (int) ;
 int get_bits1 (int *) ;
 int get_ue_golomb (int *) ;

__attribute__((used)) static inline int get_te_golomb(GetBitContext *gb, int range)
{
    av_assert2(range >= 1);

    if (range == 2)
        return get_bits1(gb) ^ 1;
    else
        return get_ue_golomb(gb);
}
