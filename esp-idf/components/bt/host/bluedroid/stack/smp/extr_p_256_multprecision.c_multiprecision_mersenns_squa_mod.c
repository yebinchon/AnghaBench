
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int DWORD ;


 int multiprecision_mersenns_mult_mod (int *,int *,int *,int ) ;

void multiprecision_mersenns_squa_mod(DWORD *c, DWORD *a, uint32_t keyLength)
{
    multiprecision_mersenns_mult_mod(c, a, a, keyLength);
}
