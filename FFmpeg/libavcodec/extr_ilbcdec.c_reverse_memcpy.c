
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void reverse_memcpy(int16_t *dest, int16_t *source, int length)
{
    int16_t* destPtr = dest;
    int16_t* sourcePtr = source;
    int j;

    for (j = 0; j < length; j++)
        *destPtr-- = *sourcePtr++;
}
