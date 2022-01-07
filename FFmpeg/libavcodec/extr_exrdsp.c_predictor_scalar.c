
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t ptrdiff_t ;



__attribute__((used)) static void predictor_scalar(uint8_t *src, ptrdiff_t size)
{
    ptrdiff_t i;

    for (i = 1; i < size; i++)
        src[i] += src[i-1] - 128;
}
