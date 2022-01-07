
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int DWORD ;



void multiprecision_copy(DWORD *c, DWORD *a, uint32_t keyLength)
{
    for (uint32_t i = 0; i < keyLength; i++) {
        c[i] = a[i];
    }
}
