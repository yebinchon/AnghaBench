
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mb_height; int stc; scalar_t__ mbx; int gb; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AVSContext ;


 int decode_slice_header (TYPE_1__*,int *) ;
 int get_bits (int *,int) ;
 int get_bits_count (int *) ;
 int show_bits (int *,int) ;
 int show_bits_long (int *,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static inline int check_for_slice(AVSContext *h)
{
    GetBitContext *gb = &h->gb;
    int align;

    if (h->mbx)
        return 0;
    align = (-get_bits_count(gb)) & 7;

    if (!align && (show_bits(gb, 8) == 0x80))
        align = 8;
    if ((show_bits_long(gb, 24 + align) & 0xFFFFFF) == 0x000001) {
        skip_bits_long(gb, 24 + align);
        h->stc = get_bits(gb, 8);
        if (h->stc >= h->mb_height)
            return 0;
        decode_slice_header(h, gb);
        return 1;
    }
    return 0;
}
