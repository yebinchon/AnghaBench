
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOARD_PHY_ADDRESS ;
 int ETH_LINK_EXTI_LINE ;
 int EXTI_ClearITPendingBit (int ) ;
 scalar_t__ EXTI_GetITStatus (int ) ;
 int Eth_Link_ITHandler (int ) ;
 scalar_t__ RESET ;

void EXTI15_10_IRQHandler(void)
{
  if(EXTI_GetITStatus(ETH_LINK_EXTI_LINE) != RESET)
  {
    Eth_Link_ITHandler(BOARD_PHY_ADDRESS);

    EXTI_ClearITPendingBit(ETH_LINK_EXTI_LINE);
  }
}
