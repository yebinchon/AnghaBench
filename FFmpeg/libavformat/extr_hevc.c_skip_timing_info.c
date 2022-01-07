
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 scalar_t__ get_bits1 (int *) ;
 int get_ue_golomb_long (int *) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static void skip_timing_info(GetBitContext *gb)
{
    skip_bits_long(gb, 32);
    skip_bits_long(gb, 32);

    if (get_bits1(gb))
        get_ue_golomb_long(gb);
}
