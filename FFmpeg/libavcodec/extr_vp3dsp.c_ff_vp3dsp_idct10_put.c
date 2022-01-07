
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int idct10 (int *,int ,int *,int) ;
 int memset (int *,int ,int) ;

void ff_vp3dsp_idct10_put(uint8_t *dest, ptrdiff_t stride, int16_t *block)
{
    idct10(dest, stride, block, 1);
    memset(block, 0, sizeof(*block) * 64);
}
