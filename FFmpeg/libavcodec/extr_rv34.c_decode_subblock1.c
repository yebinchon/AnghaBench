
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int VLC ;
typedef int GetBitContext ;


 int decode_coeff (int *,int,int,int *,int *,int) ;
 int* modulo_three_table ;

__attribute__((used)) static inline void decode_subblock1(int16_t *dst, int code, GetBitContext *gb, VLC *vlc, int q)
{
    int coeff = modulo_three_table[code] >> 6;
    decode_coeff(dst, coeff, 3, gb, vlc, q);
}
