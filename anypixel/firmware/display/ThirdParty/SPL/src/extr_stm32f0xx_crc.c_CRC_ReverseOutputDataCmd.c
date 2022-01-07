
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CR; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* CRC ;
 scalar_t__ CRC_CR_REV_OUT ;
 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void CRC_ReverseOutputDataCmd(FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    CRC->CR |= CRC_CR_REV_OUT;
  }
  else
  {

    CRC->CR &= (uint32_t)~((uint32_t)CRC_CR_REV_OUT);
  }
}
