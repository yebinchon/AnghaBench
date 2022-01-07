
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int VLC ;
typedef int GetBitContext ;


 int decode_coeff (int *,int,int,int *,int *,int) ;
 int* modulo_three_table ;

__attribute__((used)) static inline void decode_subblock3(int16_t *dst, int code, GetBitContext *gb, VLC *vlc,
                                    int q_dc, int q_ac1, int q_ac2)
{
    int flags = modulo_three_table[code];

    decode_coeff(dst+0*4+0, (flags >> 6) , 3, gb, vlc, q_dc);
    decode_coeff(dst+0*4+1, (flags >> 4) & 3, 2, gb, vlc, q_ac1);
    decode_coeff(dst+1*4+0, (flags >> 2) & 3, 2, gb, vlc, q_ac1);
    decode_coeff(dst+1*4+1, (flags >> 0) & 3, 2, gb, vlc, q_ac2);
}
