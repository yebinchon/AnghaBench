
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int MASK; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_SDIO_IT (int ) ;
 TYPE_1__* SDIO ;
 int assert_param (int ) ;

void SDIO_ITConfig(uint32_t SDIO_IT, FunctionalState NewState)
{

  assert_param(IS_SDIO_IT(SDIO_IT));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    SDIO->MASK |= SDIO_IT;
  }
  else
  {

    SDIO->MASK &= ~SDIO_IT;
  }
}
