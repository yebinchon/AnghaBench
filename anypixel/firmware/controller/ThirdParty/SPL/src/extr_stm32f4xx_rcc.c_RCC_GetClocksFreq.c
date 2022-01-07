
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int CFGR; int PLLCFGR; } ;
struct TYPE_4__ {int SYSCLK_Frequency; int HCLK_Frequency; int PCLK1_Frequency; int PCLK2_Frequency; } ;
typedef TYPE_1__ RCC_ClocksTypeDef ;


 int* APBAHBPrescTable ;
 int HSE_VALUE ;
 int HSI_VALUE ;
 TYPE_3__* RCC ;
 int RCC_CFGR_HPRE ;
 int RCC_CFGR_PPRE1 ;
 int RCC_CFGR_PPRE2 ;
 int RCC_CFGR_SWS ;
 int RCC_PLLCFGR_PLLM ;
 int RCC_PLLCFGR_PLLN ;
 int RCC_PLLCFGR_PLLP ;
 int RCC_PLLCFGR_PLLSRC ;

void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks)
{
  uint32_t tmp = 0, presc = 0, pllvco = 0, pllp = 2, pllsource = 0, pllm = 2;


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




      pllsource = (RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) >> 22;
      pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;

      if (pllsource != 0)
      {

        pllvco = (HSE_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);
      }
      else
      {

        pllvco = (HSI_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);
      }

      pllp = (((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >>16) + 1 ) *2;
      RCC_Clocks->SYSCLK_Frequency = pllvco/pllp;
      break;
    default:
      RCC_Clocks->SYSCLK_Frequency = HSI_VALUE;
      break;
  }



  tmp = RCC->CFGR & RCC_CFGR_HPRE;
  tmp = tmp >> 4;
  presc = APBAHBPrescTable[tmp];

  RCC_Clocks->HCLK_Frequency = RCC_Clocks->SYSCLK_Frequency >> presc;


  tmp = RCC->CFGR & RCC_CFGR_PPRE1;
  tmp = tmp >> 10;
  presc = APBAHBPrescTable[tmp];

  RCC_Clocks->PCLK1_Frequency = RCC_Clocks->HCLK_Frequency >> presc;


  tmp = RCC->CFGR & RCC_CFGR_PPRE2;
  tmp = tmp >> 13;
  presc = APBAHBPrescTable[tmp];

  RCC_Clocks->PCLK2_Frequency = RCC_Clocks->HCLK_Frequency >> presc;
}
