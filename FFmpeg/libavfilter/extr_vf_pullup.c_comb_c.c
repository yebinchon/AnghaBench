
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 scalar_t__ ABS (int const) ;

__attribute__((used)) static int comb_c(const uint8_t *a, const uint8_t *b, ptrdiff_t s)
{
    int i, j, comb = 0;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 8; j++)
            comb += ABS((a[j] << 1) - b[j - s] - b[j ]) +
                    ABS((b[j] << 1) - a[j ] - a[j + s]);
        a += s;
        b += s;
    }

    return comb;
}
