
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ ACR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 TYPE_1__* FLASH ;
 scalar_t__ FLASH_ACR_PRFTBE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void FLASH_PrefetchBufferCmd(FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if(NewState != DISABLE)
  {
    FLASH->ACR |= FLASH_ACR_PRFTBE;
  }
  else
  {
    FLASH->ACR &= (uint32_t)(~((uint32_t)FLASH_ACR_PRFTBE));
  }
}
