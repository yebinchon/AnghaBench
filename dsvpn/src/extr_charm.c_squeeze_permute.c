
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int endian_swap_rate (int *) ;
 int memcpy (unsigned char*,int *,int) ;
 int permute (int *) ;

__attribute__((used)) static inline void squeeze_permute(uint32_t st[12], unsigned char dst[16])
{
    endian_swap_rate(st);
    memcpy(dst, st, 16);
    endian_swap_rate(st);
    permute(st);
}
