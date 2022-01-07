
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HCLK_Frequency; } ;
typedef TYPE_1__ RCC_ClocksTypeDef ;


 int BOARD_PHY_ADDRESS ;
 int ETH_GPIO_Config () ;
 int ETH_LINK_FLAG ;
 int ETH_MACDMA_Config () ;
 int ETH_ReadPHYRegister (int ,int ) ;
 int EthStatus ;
 int Eth_Link_EXTIConfig () ;
 int Eth_Link_PHYITConfig (int ) ;
 int NVIC_SetPriority (int ,int ) ;
 int PHY_SR ;
 int RCC_GetClocksFreq (TYPE_1__*) ;
 int SysTick_CLKSourceConfig (int ) ;
 int SysTick_CLKSource_HCLK ;
 int SysTick_Config (int) ;
 int SysTick_IRQn ;

void ETH_BSP_Config(void)
{
  RCC_ClocksTypeDef RCC_Clocks;
  SysTick_CLKSourceConfig(SysTick_CLKSource_HCLK);


  RCC_GetClocksFreq(&RCC_Clocks);
  SysTick_Config(RCC_Clocks.HCLK_Frequency / 1000);


  NVIC_SetPriority (SysTick_IRQn, 0);


  ETH_GPIO_Config();


  ETH_MACDMA_Config();


  if(ETH_ReadPHYRegister(BOARD_PHY_ADDRESS, PHY_SR) & 1)
  {
    EthStatus |= ETH_LINK_FLAG;
  }


  Eth_Link_PHYITConfig(BOARD_PHY_ADDRESS);


  Eth_Link_EXTIConfig();
}
