
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int DWORD ;


 int multiprecision_most_signbits (int*,int) ;
 int multiprecision_rshift (int*,int*,int) ;

__attribute__((used)) static void ECC_NAF(uint8_t *naf, uint32_t *NumNAF, DWORD *k, uint32_t keyLength)
{
    uint32_t sign;
    int i = 0;
    int j;
    uint32_t var;

    while ((var = multiprecision_most_signbits(k, keyLength)) >= 1) {
        if (k[0] & 0x01) {
            sign = (k[0] & 0x03);


            if (sign == 1) {
                k[0] = k[0] & 0xFFFFFFFE;
            } else {
                k[0] = k[0] + 1;
                if (k[0] == 0) {
                    j = 1;
                    do {
                        k[j]++;
                    } while (k[j++] == 0);
                }
            }
        } else {
            sign = 0;
        }

        multiprecision_rshift(k, k, keyLength);
        naf[i / 4] |= (sign) << ((i % 4) * 2);
        i++;
    }

    *NumNAF = i;
}
