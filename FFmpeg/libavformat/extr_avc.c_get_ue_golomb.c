
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_bits1 (int *) ;
 int get_bitsz (int *,int) ;

__attribute__((used)) static inline int get_ue_golomb(GetBitContext *gb) {
    int i;
    for (i = 0; i < 32 && !get_bits1(gb); i++)
        ;
    return get_bitsz(gb, i) + (1 << i) - 1;
}
