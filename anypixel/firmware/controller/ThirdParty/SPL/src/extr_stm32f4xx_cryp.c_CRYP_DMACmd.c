
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ DMACR; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* CRYP ;
 scalar_t__ DISABLE ;
 int IS_CRYP_DMAREQ (scalar_t__) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void CRYP_DMACmd(uint8_t CRYP_DMAReq, FunctionalState NewState)
{

  assert_param(IS_CRYP_DMAREQ(CRYP_DMAReq));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    CRYP->DMACR |= CRYP_DMAReq;
  }
  else
  {

    CRYP->DMACR &= (uint8_t)~CRYP_DMAReq;
  }
}
