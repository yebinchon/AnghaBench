
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GPU_BLENDFACTOR ;
typedef int GPU_BLENDEQUATION ;


 int GPUCMD_AddMaskedWrite (int ,int,int) ;
 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_BLEND_FUNC ;
 int GPUREG_COLOR_OPERATION ;

void GPU_SetAlphaBlending(GPU_BLENDEQUATION colorEquation, GPU_BLENDEQUATION alphaEquation,
 GPU_BLENDFACTOR colorSrc, GPU_BLENDFACTOR colorDst,
 GPU_BLENDFACTOR alphaSrc, GPU_BLENDFACTOR alphaDst)
{
 GPUCMD_AddWrite(GPUREG_BLEND_FUNC, colorEquation | (alphaEquation<<8) | (colorSrc<<16) | (colorDst<<20) | (alphaSrc<<24) | (alphaDst<<28));
 GPUCMD_AddMaskedWrite(GPUREG_COLOR_OPERATION, 0x2, 0x00000100);
}
