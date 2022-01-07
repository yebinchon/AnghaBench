
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;
typedef int GetBitContext ;


 int align_get_bits (int *) ;
 int avpriv_align_put_bits (int *) ;
 int ff_pce_copy_bits (int *,int *,int) ;
 int put_bits_count (int *) ;

__attribute__((used)) static inline int ff_copy_pce_data(PutBitContext *pb, GetBitContext *gb)
{
    int five_bit_ch, four_bit_ch, comment_size, bits;
    int offset = put_bits_count(pb);

    ff_pce_copy_bits(pb, gb, 10);
    five_bit_ch = ff_pce_copy_bits(pb, gb, 4);
    five_bit_ch += ff_pce_copy_bits(pb, gb, 4);
    five_bit_ch += ff_pce_copy_bits(pb, gb, 4);
    four_bit_ch = ff_pce_copy_bits(pb, gb, 2);
    four_bit_ch += ff_pce_copy_bits(pb, gb, 3);
    five_bit_ch += ff_pce_copy_bits(pb, gb, 4);
    if (ff_pce_copy_bits(pb, gb, 1))
        ff_pce_copy_bits(pb, gb, 4);
    if (ff_pce_copy_bits(pb, gb, 1))
        ff_pce_copy_bits(pb, gb, 4);
    if (ff_pce_copy_bits(pb, gb, 1))
        ff_pce_copy_bits(pb, gb, 3);
    for (bits = five_bit_ch*5+four_bit_ch*4; bits > 16; bits -= 16)
        ff_pce_copy_bits(pb, gb, 16);
    if (bits)
        ff_pce_copy_bits(pb, gb, bits);
    avpriv_align_put_bits(pb);
    align_get_bits(gb);
    comment_size = ff_pce_copy_bits(pb, gb, 8);
    for (; comment_size > 0; comment_size--)
        ff_pce_copy_bits(pb, gb, 8);

    return put_bits_count(pb) - offset;
}
