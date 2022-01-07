
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef scalar_t__ DWORD ;



DWORD multiprecision_add(DWORD *c, DWORD *a, DWORD *b, uint32_t keyLength)
{
    DWORD carrier;
    DWORD temp;

    carrier = 0;
    for (uint32_t i = 0; i < keyLength; i++) {
        temp = a[i] + carrier;
        carrier = (temp < carrier);
        temp += b[i];
        carrier |= (temp < b[i]);
        c[i] = temp;
    }

    return carrier;
}
