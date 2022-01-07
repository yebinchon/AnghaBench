
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int I2S_CPOL; int I2S_AudioFreq; int I2S_MCLKOutput; int I2S_DataFormat; int I2S_Standard; int I2S_Mode; } ;
typedef TYPE_1__ I2S_InitTypeDef ;


 int I2S_AudioFreq_Default ;
 int I2S_CPOL_Low ;
 int I2S_DataFormat_16b ;
 int I2S_MCLKOutput_Disable ;
 int I2S_Mode_SlaveTx ;
 int I2S_Standard_Phillips ;

void I2S_StructInit(I2S_InitTypeDef* I2S_InitStruct)
{


  I2S_InitStruct->I2S_Mode = I2S_Mode_SlaveTx;


  I2S_InitStruct->I2S_Standard = I2S_Standard_Phillips;


  I2S_InitStruct->I2S_DataFormat = I2S_DataFormat_16b;


  I2S_InitStruct->I2S_MCLKOutput = I2S_MCLKOutput_Disable;


  I2S_InitStruct->I2S_AudioFreq = I2S_AudioFreq_Default;


  I2S_InitStruct->I2S_CPOL = I2S_CPOL_Low;
}
