
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int idct_msa (int *,int ,int *,int) ;
 int memset (int *,int ,int) ;

void ff_vp3_idct_add_msa(uint8_t *dest, ptrdiff_t line_size, int16_t *block)
{
    idct_msa(dest, line_size, block, 2);
    memset(block, 0, sizeof(*block) * 64);
}
