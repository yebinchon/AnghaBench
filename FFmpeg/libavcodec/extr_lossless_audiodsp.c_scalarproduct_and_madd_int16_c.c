
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;



__attribute__((used)) static int32_t scalarproduct_and_madd_int16_c(int16_t *v1, const int16_t *v2,
                                              const int16_t *v3,
                                              int order, int mul)
{
    int res = 0;

    do {
        res += *v1 * *v2++;
        *v1++ += mul * *v3++;
        res += *v1 * *v2++;
        *v1++ += mul * *v3++;
    } while (order-=2);
    return res;
}
