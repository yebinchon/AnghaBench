
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef scalar_t__ DWORD ;



int multiprecision_iszero(DWORD *a, uint32_t keyLength)
{
    for (uint32_t i = 0; i < keyLength; i++)
        if (a[i]) {
            return 0;
        }

    return 1;
}
