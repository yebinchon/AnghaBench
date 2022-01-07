
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 TYPE_1__* FLASH ;
 int IS_FLASH_IT (scalar_t__) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void FLASH_ITConfig(uint32_t FLASH_IT, FunctionalState NewState)
{

  assert_param(IS_FLASH_IT(FLASH_IT));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if(NewState != DISABLE)
  {

    FLASH->CR |= FLASH_IT;
  }
  else
  {

    FLASH->CR &= ~(uint32_t)FLASH_IT;
  }
}
