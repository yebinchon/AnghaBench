
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 scalar_t__ ETH_ERROR ;
 scalar_t__ ETH_ReadPHYRegister (scalar_t__,int ) ;
 scalar_t__ ETH_SUCCESS ;
 scalar_t__ ETH_WritePHYRegister (scalar_t__,int ,scalar_t__) ;
 int IS_ETH_PHY_ADDRESS (scalar_t__) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int PHY_BCR ;
 scalar_t__ PHY_Loopback ;
 scalar_t__ RESET ;
 int assert_param (int ) ;

uint32_t ETH_PHYLoopBackCmd(uint16_t PHYAddress, FunctionalState NewState)
{
  uint16_t tmpreg = 0;

  assert_param(IS_ETH_PHY_ADDRESS(PHYAddress));
  assert_param(IS_FUNCTIONAL_STATE(NewState));


  tmpreg = ETH_ReadPHYRegister(PHYAddress, PHY_BCR);

  if (NewState != DISABLE)
  {

    tmpreg |= PHY_Loopback;
  }
  else
  {

    tmpreg &= (uint16_t)(~(uint16_t)PHY_Loopback);
  }

  if(ETH_WritePHYRegister(PHYAddress, PHY_BCR, tmpreg) != (uint32_t)RESET)
  {
    return ETH_SUCCESS;
  }
  else
  {

    return ETH_ERROR;
  }
}
