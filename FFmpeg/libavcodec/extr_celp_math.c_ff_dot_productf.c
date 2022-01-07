
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float ff_dot_productf(const float* a, const float* b, int length)
{
    float sum = 0;
    int i;

    for(i=0; i<length; i++)
        sum += a[i] * b[i];

    return sum;
}
