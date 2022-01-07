
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GPUCMD_AddMaskedWrite (int ,int,int) ;
 int GPUREG_TEXENV_UPDATE_BUFFER ;

void GPU_SetCombinerBufferWrite(u8 rgb_config, u8 alpha_config)
{
    GPUCMD_AddMaskedWrite(GPUREG_TEXENV_UPDATE_BUFFER, 0x2, (rgb_config << 8) | (alpha_config << 12));
}
