
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ IMR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 TYPE_1__* HASH ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_HASH_IT (scalar_t__) ;
 int assert_param (int ) ;

void HASH_ITConfig(uint8_t HASH_IT, FunctionalState NewState)
{

  assert_param(IS_HASH_IT(HASH_IT));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    HASH->IMR |= HASH_IT;
  }
  else
  {

    HASH->IMR &= (uint8_t) ~HASH_IT;
  }
}
