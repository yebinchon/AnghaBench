
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 scalar_t__ AV_RN32A (int const*) ;

__attribute__((used)) static int iszero(const int16_t *c, int sz)
{
    int n;

    for (n = 0; n < sz / sizeof(int16_t); n += 2)
        if (AV_RN32A(&c[n]))
            return 0;

    return 1;
}
