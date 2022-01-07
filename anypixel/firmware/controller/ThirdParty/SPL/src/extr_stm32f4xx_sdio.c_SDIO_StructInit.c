
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SDIO_ClockDiv; int SDIO_HardwareFlowControl; int SDIO_BusWide; int SDIO_ClockPowerSave; int SDIO_ClockBypass; int SDIO_ClockEdge; } ;
typedef TYPE_1__ SDIO_InitTypeDef ;


 int SDIO_BusWide_1b ;
 int SDIO_ClockBypass_Disable ;
 int SDIO_ClockEdge_Rising ;
 int SDIO_ClockPowerSave_Disable ;
 int SDIO_HardwareFlowControl_Disable ;

void SDIO_StructInit(SDIO_InitTypeDef* SDIO_InitStruct)
{

  SDIO_InitStruct->SDIO_ClockDiv = 0x00;
  SDIO_InitStruct->SDIO_ClockEdge = SDIO_ClockEdge_Rising;
  SDIO_InitStruct->SDIO_ClockBypass = SDIO_ClockBypass_Disable;
  SDIO_InitStruct->SDIO_ClockPowerSave = SDIO_ClockPowerSave_Disable;
  SDIO_InitStruct->SDIO_BusWide = SDIO_BusWide_1b;
  SDIO_InitStruct->SDIO_HardwareFlowControl = SDIO_HardwareFlowControl_Disable;
}
