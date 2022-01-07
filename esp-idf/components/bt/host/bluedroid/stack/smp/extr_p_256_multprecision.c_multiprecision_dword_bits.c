
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ UINT32 ;
typedef int DWORD ;


 scalar_t__ DWORD_BITS ;

UINT32 multiprecision_dword_bits(DWORD a)
{
    uint32_t i;
    for (i = 0; i < DWORD_BITS; i++, a >>= 1)
        if (a == 0) {
            break;
        }

    return i;
}
