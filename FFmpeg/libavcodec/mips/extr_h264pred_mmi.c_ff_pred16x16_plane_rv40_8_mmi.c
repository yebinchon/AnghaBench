
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int pred16x16_plane_compat_mmi (int *,int ,int ,int) ;

void ff_pred16x16_plane_rv40_8_mmi(uint8_t *src, ptrdiff_t stride)
{
    pred16x16_plane_compat_mmi(src, stride, 0, 1);
}
