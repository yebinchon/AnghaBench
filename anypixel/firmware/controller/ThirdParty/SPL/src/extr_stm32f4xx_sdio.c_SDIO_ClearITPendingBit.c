
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ICR; } ;


 int IS_SDIO_CLEAR_IT (int ) ;
 TYPE_1__* SDIO ;
 int assert_param (int ) ;

void SDIO_ClearITPendingBit(uint32_t SDIO_IT)
{

  assert_param(IS_SDIO_CLEAR_IT(SDIO_IT));

  SDIO->ICR = SDIO_IT;
}
