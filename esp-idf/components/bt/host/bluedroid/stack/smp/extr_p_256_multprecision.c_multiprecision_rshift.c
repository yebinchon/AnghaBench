
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int DWORD ;


 int DWORD_BITS ;

void multiprecision_rshift(DWORD *c, DWORD *a, uint32_t keyLength)
{
    int j;
    DWORD b = 1;

    j = DWORD_BITS - b;

    DWORD carrier = 0;
    DWORD temp;
    for (int i = keyLength - 1; i >= 0; i--) {
        temp = a[i];
        c[i] = (temp >> b) | carrier;
        carrier = temp << j;
    }
}
