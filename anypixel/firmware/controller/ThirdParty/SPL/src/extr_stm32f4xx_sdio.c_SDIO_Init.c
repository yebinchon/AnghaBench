
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int CLKCR; } ;
struct TYPE_4__ {int SDIO_ClockEdge; int SDIO_ClockBypass; int SDIO_ClockPowerSave; int SDIO_BusWide; int SDIO_HardwareFlowControl; int SDIO_ClockDiv; } ;
typedef TYPE_1__ SDIO_InitTypeDef ;


 int CLKCR_CLEAR_MASK ;
 int IS_SDIO_BUS_WIDE (int) ;
 int IS_SDIO_CLOCK_BYPASS (int) ;
 int IS_SDIO_CLOCK_EDGE (int) ;
 int IS_SDIO_CLOCK_POWER_SAVE (int) ;
 int IS_SDIO_HARDWARE_FLOW_CONTROL (int) ;
 TYPE_3__* SDIO ;
 int assert_param (int ) ;

void SDIO_Init(SDIO_InitTypeDef* SDIO_InitStruct)
{
  uint32_t tmpreg = 0;


  assert_param(IS_SDIO_CLOCK_EDGE(SDIO_InitStruct->SDIO_ClockEdge));
  assert_param(IS_SDIO_CLOCK_BYPASS(SDIO_InitStruct->SDIO_ClockBypass));
  assert_param(IS_SDIO_CLOCK_POWER_SAVE(SDIO_InitStruct->SDIO_ClockPowerSave));
  assert_param(IS_SDIO_BUS_WIDE(SDIO_InitStruct->SDIO_BusWide));
  assert_param(IS_SDIO_HARDWARE_FLOW_CONTROL(SDIO_InitStruct->SDIO_HardwareFlowControl));



  tmpreg = SDIO->CLKCR;


  tmpreg &= CLKCR_CLEAR_MASK;







  tmpreg |= (SDIO_InitStruct->SDIO_ClockDiv | SDIO_InitStruct->SDIO_ClockPowerSave |
             SDIO_InitStruct->SDIO_ClockBypass | SDIO_InitStruct->SDIO_BusWide |
             SDIO_InitStruct->SDIO_ClockEdge | SDIO_InitStruct->SDIO_HardwareFlowControl);


  SDIO->CLKCR = tmpreg;
}
