
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int GetBitContext ;


 int unpack_alpha (int *,int *,int,int,int) ;

__attribute__((used)) static void unpack_alpha_10(GetBitContext *gb, uint16_t *dst, int num_coeffs,
                            const int num_bits)
{
    if (num_bits == 16) {
        unpack_alpha(gb, dst, num_coeffs, 16, 10);
    } else {
        unpack_alpha(gb, dst, num_coeffs, 8, 10);
    }
}
