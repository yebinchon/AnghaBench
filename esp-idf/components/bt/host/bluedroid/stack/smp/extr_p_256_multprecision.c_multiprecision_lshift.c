
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t DWORD ;


 int DWORD_BITS ;

DWORD multiprecision_lshift(DWORD *c, DWORD *a, uint32_t keyLength)
{
    int j;
    uint32_t b = 1;
    j = DWORD_BITS - b;

    DWORD carrier = 0;
    DWORD temp;

    for (uint32_t i = 0; i < keyLength; i++) {
        temp = a[i];
        c[i] = (temp << b) | carrier;
        carrier = temp >> j;
    }

    return carrier;
}
