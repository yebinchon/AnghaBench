
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int VALUE_BITS ;
 int skip_bits_long (int *,int) ;

void ff_bgmc_decode_end(GetBitContext *gb)
{
    skip_bits_long(gb, -(VALUE_BITS - 2));
}
