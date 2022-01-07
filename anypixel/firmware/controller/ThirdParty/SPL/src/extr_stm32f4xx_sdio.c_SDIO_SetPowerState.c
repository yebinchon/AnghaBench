
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int POWER; } ;


 int IS_SDIO_POWER_STATE (int ) ;
 TYPE_1__* SDIO ;
 int assert_param (int ) ;

void SDIO_SetPowerState(uint32_t SDIO_PowerState)
{

  assert_param(IS_SDIO_POWER_STATE(SDIO_PowerState));

  SDIO->POWER = SDIO_PowerState;
}
