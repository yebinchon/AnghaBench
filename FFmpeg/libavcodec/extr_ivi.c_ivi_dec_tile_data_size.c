
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int align_get_bits (int *) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_long (int *,int) ;

__attribute__((used)) static int ivi_dec_tile_data_size(GetBitContext *gb)
{
    int len;

    len = 0;
    if (get_bits1(gb)) {
        len = get_bits(gb, 8);
        if (len == 255)
            len = get_bits_long(gb, 24);
    }


    align_get_bits(gb);

    return len;
}
