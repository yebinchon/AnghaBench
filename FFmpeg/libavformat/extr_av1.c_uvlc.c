
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 scalar_t__ get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static inline void uvlc(GetBitContext *gb)
{
    int leading_zeros = 0;

    while (get_bits_left(gb)) {
        if (get_bits1(gb))
            break;
        leading_zeros++;
    }

    if (leading_zeros >= 32)
        return;

    skip_bits_long(gb, leading_zeros);
}
