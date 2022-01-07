
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int UINT32 ;
typedef scalar_t__ DWORD ;



UINT32 multiprecision_most_signdwords(DWORD *a, uint32_t keyLength)
{
    int i;
    for (i = keyLength - 1; i >= 0; i--)
        if (a[i]) {
            break;
        }
    return (i + 1);
}
