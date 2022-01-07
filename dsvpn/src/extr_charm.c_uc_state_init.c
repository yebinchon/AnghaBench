
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int endian_swap_all (int *) ;
 int memcpy (int *,unsigned char const*,int) ;
 int permute (int *) ;

void uc_state_init(uint32_t st[12], const unsigned char key[32], const unsigned char iv[16])
{
    memcpy(&st[0], iv, 16);
    memcpy(&st[4], key, 32);
    endian_swap_all(st);
    permute(st);
}
