
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static int number_trailing_zeroes(int32_t sample)
{
    int bits;

    for (bits = 0; bits < 24 && !(sample & (1<<bits)); bits++);



    if (bits == 24)
        return 0;

    return bits;
}
