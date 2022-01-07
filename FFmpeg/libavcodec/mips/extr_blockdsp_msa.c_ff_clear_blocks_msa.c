
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int memset_zero_16width_msa (int *,int,int) ;

void ff_clear_blocks_msa(int16_t *block)
{
    memset_zero_16width_msa((uint8_t *) block, 16, 8 * 6);
}
