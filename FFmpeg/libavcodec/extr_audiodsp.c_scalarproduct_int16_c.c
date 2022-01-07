
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;



__attribute__((used)) static int32_t scalarproduct_int16_c(const int16_t *v1, const int16_t *v2,
                                     int order)
{
    int res = 0;

    while (order--)
        res += *v1++ **v2++;

    return res;
}
