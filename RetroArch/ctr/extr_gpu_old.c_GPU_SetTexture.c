
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int GPU_TEXUNIT ;
typedef int GPU_TEXCOLOR ;


 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_TEXUNIT0_ADDR1 ;
 int GPUREG_TEXUNIT0_DIM ;
 int GPUREG_TEXUNIT0_PARAM ;
 int GPUREG_TEXUNIT0_TYPE ;
 int GPUREG_TEXUNIT1_ADDR ;
 int GPUREG_TEXUNIT1_DIM ;
 int GPUREG_TEXUNIT1_PARAM ;
 int GPUREG_TEXUNIT1_TYPE ;
 int GPUREG_TEXUNIT2_ADDR ;
 int GPUREG_TEXUNIT2_DIM ;
 int GPUREG_TEXUNIT2_PARAM ;
 int GPUREG_TEXUNIT2_TYPE ;




void GPU_SetTexture(GPU_TEXUNIT unit, u32* data, u16 width, u16 height, u32 param, GPU_TEXCOLOR colorType)
{
 switch (unit)
 {
 case 130:
  GPUCMD_AddWrite(GPUREG_TEXUNIT0_TYPE, colorType);
  GPUCMD_AddWrite(GPUREG_TEXUNIT0_ADDR1, ((u32)data)>>3);
  GPUCMD_AddWrite(GPUREG_TEXUNIT0_DIM, (width<<16)|height);
  GPUCMD_AddWrite(GPUREG_TEXUNIT0_PARAM, param);
  break;

 case 129:
  GPUCMD_AddWrite(GPUREG_TEXUNIT1_TYPE, colorType);
  GPUCMD_AddWrite(GPUREG_TEXUNIT1_ADDR, ((u32)data)>>3);
  GPUCMD_AddWrite(GPUREG_TEXUNIT1_DIM, (width<<16)|height);
  GPUCMD_AddWrite(GPUREG_TEXUNIT1_PARAM, param);
  break;

 case 128:
  GPUCMD_AddWrite(GPUREG_TEXUNIT2_TYPE, colorType);
  GPUCMD_AddWrite(GPUREG_TEXUNIT2_ADDR, ((u32)data)>>3);
  GPUCMD_AddWrite(GPUREG_TEXUNIT2_DIM, (width<<16)|height);
  GPUCMD_AddWrite(GPUREG_TEXUNIT2_PARAM, param);
  break;
 }
}
