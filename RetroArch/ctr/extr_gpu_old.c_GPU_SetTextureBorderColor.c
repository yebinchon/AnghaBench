
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int GPU_TEXUNIT ;


 int GPUCMD_AddWrite (int ,int ) ;
 int GPUREG_TEXUNIT0_BORDER_COLOR ;
 int GPUREG_TEXUNIT1_BORDER_COLOR ;
 int GPUREG_TEXUNIT2_BORDER_COLOR ;




void GPU_SetTextureBorderColor(GPU_TEXUNIT unit,u32 borderColor)
{
 switch (unit)
 {
 case 130:
  GPUCMD_AddWrite(GPUREG_TEXUNIT0_BORDER_COLOR, borderColor);
  break;

 case 129:
  GPUCMD_AddWrite(GPUREG_TEXUNIT1_BORDER_COLOR, borderColor);
  break;

 case 128:
  GPUCMD_AddWrite(GPUREG_TEXUNIT2_BORDER_COLOR, borderColor);
  break;
 }
}
