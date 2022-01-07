
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int16_t ;


 scalar_t__ MUL16 (int const,int const) ;

int64_t ff_dot_product(const int16_t *a, const int16_t *b, int length)
{
    int i;
    int64_t sum = 0;

    for (i = 0; i < length; i++)
        sum += MUL16(a[i], b[i]);

    return sum;
}
