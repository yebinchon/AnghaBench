
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int CFGR; int CFGR2; int CFGR3; } ;
struct TYPE_4__ {int SYSCLK_Frequency; int HCLK_Frequency; int PCLK_Frequency; int ADCCLK_Frequency; int CECCLK_Frequency; int I2C1CLK_Frequency; int USART1CLK_Frequency; int USART2CLK_Frequency; int USBCLK_Frequency; } ;
typedef TYPE_1__ RCC_ClocksTypeDef ;


 int* APBAHBPrescTable ;
 int HSE_VALUE ;
 int HSI14_VALUE ;
 void* HSI48_VALUE ;
 int HSI_VALUE ;
 void* LSE_VALUE ;
 TYPE_3__* RCC ;
 int RCC_CFGR2_PREDIV1 ;
 int RCC_CFGR3_ADCSW ;
 int RCC_CFGR3_CECSW ;
 int RCC_CFGR3_I2C1SW ;
 int RCC_CFGR3_USART1SW ;
 int RCC_CFGR3_USART1SW_0 ;
 int RCC_CFGR3_USART1SW_1 ;
 int RCC_CFGR3_USART2SW ;
 int RCC_CFGR3_USART2SW_0 ;
 int RCC_CFGR3_USART2SW_1 ;
 int RCC_CFGR3_USBSW ;
 int RCC_CFGR_ADCPRE ;
 int RCC_CFGR_HPRE ;
 int RCC_CFGR_PLLMULL ;
 int RCC_CFGR_PLLSRC ;
 int RCC_CFGR_PPRE ;
 int RCC_CFGR_SWS ;

void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks)
{
  uint32_t tmp = 0, pllmull = 0, pllsource = 0, prediv1factor = 0, presc = 0, pllclk = 0;


  tmp = RCC->CFGR & RCC_CFGR_SWS;

  switch (tmp)
  {
    case 0x00:
      RCC_Clocks->SYSCLK_Frequency = HSI_VALUE;
      break;
    case 0x04:
      RCC_Clocks->SYSCLK_Frequency = HSE_VALUE;
      break;
    case 0x08:

      pllmull = RCC->CFGR & RCC_CFGR_PLLMULL;
      pllsource = RCC->CFGR & RCC_CFGR_PLLSRC;
      pllmull = ( pllmull >> 18) + 2;

      if (pllsource == 0x00)
      {

        pllclk = (HSI_VALUE >> 1) * pllmull;
      }
      else
      {
        prediv1factor = (RCC->CFGR2 & RCC_CFGR2_PREDIV1) + 1;

        pllclk = (HSE_VALUE / prediv1factor) * pllmull;
      }
      RCC_Clocks->SYSCLK_Frequency = pllclk;
      break;
    case 0x0C:
      RCC_Clocks->SYSCLK_Frequency = HSI48_VALUE;
      break;
    default:
      RCC_Clocks->SYSCLK_Frequency = HSI_VALUE;
      break;
  }


  tmp = RCC->CFGR & RCC_CFGR_HPRE;
  tmp = tmp >> 4;
  presc = APBAHBPrescTable[tmp];

  RCC_Clocks->HCLK_Frequency = RCC_Clocks->SYSCLK_Frequency >> presc;


  tmp = RCC->CFGR & RCC_CFGR_PPRE;
  tmp = tmp >> 8;
  presc = APBAHBPrescTable[tmp];

  RCC_Clocks->PCLK_Frequency = RCC_Clocks->HCLK_Frequency >> presc;


  if((RCC->CFGR3 & RCC_CFGR3_ADCSW) != RCC_CFGR3_ADCSW)
  {

    RCC_Clocks->ADCCLK_Frequency = HSI14_VALUE;
  }
  else
  {
    if((RCC->CFGR & RCC_CFGR_ADCPRE) != RCC_CFGR_ADCPRE)
    {

      RCC_Clocks->ADCCLK_Frequency = RCC_Clocks->PCLK_Frequency >> 1;
    }
    else
    {

      RCC_Clocks->ADCCLK_Frequency = RCC_Clocks->PCLK_Frequency >> 2;
    }

  }


  if((RCC->CFGR3 & RCC_CFGR3_CECSW) != RCC_CFGR3_CECSW)
  {

    RCC_Clocks->CECCLK_Frequency = HSI_VALUE / 244;
  }
  else
  {

    RCC_Clocks->CECCLK_Frequency = LSE_VALUE;
  }


  if((RCC->CFGR3 & RCC_CFGR3_I2C1SW) != RCC_CFGR3_I2C1SW)
  {

    RCC_Clocks->I2C1CLK_Frequency = HSI_VALUE;
  }
  else
  {

    RCC_Clocks->I2C1CLK_Frequency = RCC_Clocks->SYSCLK_Frequency;
  }


  if((RCC->CFGR3 & RCC_CFGR3_USART1SW) == 0x0)
  {

    RCC_Clocks->USART1CLK_Frequency = RCC_Clocks->PCLK_Frequency;
  }
  else if((RCC->CFGR3 & RCC_CFGR3_USART1SW) == RCC_CFGR3_USART1SW_0)
  {

    RCC_Clocks->USART1CLK_Frequency = RCC_Clocks->SYSCLK_Frequency;
  }
  else if((RCC->CFGR3 & RCC_CFGR3_USART1SW) == RCC_CFGR3_USART1SW_1)
  {

    RCC_Clocks->USART1CLK_Frequency = LSE_VALUE;
  }
  else if((RCC->CFGR3 & RCC_CFGR3_USART1SW) == RCC_CFGR3_USART1SW)
  {

    RCC_Clocks->USART1CLK_Frequency = HSI_VALUE;
  }


  if((RCC->CFGR3 & RCC_CFGR3_USART2SW) == 0x0)
  {

    RCC_Clocks->USART2CLK_Frequency = RCC_Clocks->PCLK_Frequency;
  }
  else if((RCC->CFGR3 & RCC_CFGR3_USART2SW) == RCC_CFGR3_USART2SW_0)
  {

    RCC_Clocks->USART2CLK_Frequency = RCC_Clocks->SYSCLK_Frequency;
  }
  else if((RCC->CFGR3 & RCC_CFGR3_USART2SW) == RCC_CFGR3_USART2SW_1)
  {

    RCC_Clocks->USART2CLK_Frequency = LSE_VALUE;
  }
  else if((RCC->CFGR3 & RCC_CFGR3_USART2SW) == RCC_CFGR3_USART2SW)
  {

    RCC_Clocks->USART2CLK_Frequency = HSI_VALUE;
  }


  if((RCC->CFGR3 & RCC_CFGR3_USBSW) != RCC_CFGR3_USBSW)
  {

    RCC_Clocks->USBCLK_Frequency = HSI48_VALUE;
  }
  else
  {

    RCC_Clocks->USBCLK_Frequency = pllclk;
  }
}
