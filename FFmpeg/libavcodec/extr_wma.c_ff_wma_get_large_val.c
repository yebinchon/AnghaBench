
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 scalar_t__ get_bits1 (int *) ;
 unsigned int get_bits_long (int *,int) ;

unsigned int ff_wma_get_large_val(GetBitContext *gb)
{

    int n_bits = 8;

    if (get_bits1(gb)) {
        n_bits += 8;
        if (get_bits1(gb)) {
            n_bits += 8;
            if (get_bits1(gb))
                n_bits += 7;
        }
    }
    return get_bits_long(gb, n_bits);
}
