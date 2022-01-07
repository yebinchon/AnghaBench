
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ptrdiff_t ;


 scalar_t__ ABS (scalar_t__ const) ;

__attribute__((used)) static int var_c(const uint8_t *a, const uint8_t *b, ptrdiff_t s)
{
    int i, j, var = 0;

    for (i = 0; i < 3; i++) {
        for (j = 0; j < 8; j++)
            var += ABS(a[j] - a[j + s]);
        a += s;
    }

    return 4 * var;
}
