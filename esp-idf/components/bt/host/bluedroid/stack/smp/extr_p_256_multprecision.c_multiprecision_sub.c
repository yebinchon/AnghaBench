
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef scalar_t__ DWORD ;



DWORD multiprecision_sub(DWORD *c, DWORD *a, DWORD *b, uint32_t keyLength)
{
    DWORD borrow;
    DWORD temp;

    borrow = 0;
    for (uint32_t i = 0; i < keyLength; i++) {
        temp = a[i] - borrow;
        borrow = (temp > a[i]);
        c[i] = temp - b[i];
        borrow |= (c[i] > temp);
    }

    return borrow;
}
