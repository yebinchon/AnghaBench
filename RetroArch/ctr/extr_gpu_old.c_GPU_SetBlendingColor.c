
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_BLEND_COLOR ;

void GPU_SetBlendingColor(u8 r, u8 g, u8 b, u8 a)
{
 GPUCMD_AddWrite(GPUREG_BLEND_COLOR, r | (g << 8) | (b << 16) | (a << 24));
}
