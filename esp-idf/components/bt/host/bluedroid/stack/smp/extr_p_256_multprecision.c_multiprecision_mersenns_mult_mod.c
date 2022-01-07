
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int DWORD ;


 int KEY_LENGTH_DWORDS_P256 ;
 int multiprecision_fast_mod (int *,int *) ;
 int multiprecision_fast_mod_P256 (int *,int *) ;
 int multiprecision_mult (int *,int *,int *,int) ;

void multiprecision_mersenns_mult_mod(DWORD *c, DWORD *a, DWORD *b, uint32_t keyLength)
{
    DWORD cc[2 * KEY_LENGTH_DWORDS_P256];

    multiprecision_mult(cc, a, b, keyLength);
    if (keyLength == 6) {
        multiprecision_fast_mod(c, cc);
    } else if (keyLength == 8) {
        multiprecision_fast_mod_P256(c, cc);
    }
}
