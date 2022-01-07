
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static void renew_table3(uint32_t nsym, uint32_t *cntsum,
                         uint16_t *freqs, uint16_t *freqs1,
                         uint16_t *cnts, uint8_t *dectab)
{
    uint32_t a = 0, b = 4096 / nsym, c = b - (b >> 1);

    *cntsum = c * nsym;

    for (int d = 0; d < nsym; d++) {
        freqs[d] = b;
        freqs1[d] = a;
        cnts[d] = c;
        for (int q = a + 128 - 1 >> 7, f = (a + b - 1 >> 7) + 1; q < f; q++)
            dectab[q] = d;

        a += b;
    }
}
