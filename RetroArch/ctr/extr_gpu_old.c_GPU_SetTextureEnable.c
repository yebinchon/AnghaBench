
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GPU_TEXUNIT ;


 int GPUCMD_AddMaskedWrite (int ,int,int) ;
 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_SH_OUTATTR_CLOCK ;
 int GPUREG_TEXUNIT_CONFIG ;

void GPU_SetTextureEnable(GPU_TEXUNIT units)
{
 GPUCMD_AddMaskedWrite(GPUREG_SH_OUTATTR_CLOCK, 0x2, units<<8);
 GPUCMD_AddWrite(GPUREG_TEXUNIT_CONFIG, 0x00011000|units);
}
