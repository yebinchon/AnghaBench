
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int* ff_reverse ;
 int get_bits (int *,int) ;

__attribute__((used)) static inline int asv2_get_bits(GetBitContext *gb, int n)
{
    return ff_reverse[get_bits(gb, n) << (8 - n)];
}
