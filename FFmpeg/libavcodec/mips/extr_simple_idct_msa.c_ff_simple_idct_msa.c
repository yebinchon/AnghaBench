
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int simple_idct_msa (int *) ;

void ff_simple_idct_msa(int16_t *block)
{
    simple_idct_msa(block);
}
