
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int align_get_bits (int *) ;
 int get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int show_bits_long (int *,int) ;

__attribute__((used)) static void next_start_code_studio(GetBitContext *gb)
{
    align_get_bits(gb);

    while (get_bits_left(gb) >= 24 && show_bits_long(gb, 24) != 0x1) {
        get_bits(gb, 8);
    }
}
