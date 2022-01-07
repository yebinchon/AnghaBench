
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; int CFGR2; } ;


 int* AHBPrescTable ;
 int HSE_VALUE ;
 int HSI_VALUE ;
 TYPE_1__* RCC ;
 int RCC_CFGR2_PREDIV1 ;
 int RCC_CFGR_HPRE ;
 int RCC_CFGR_PLLMULL ;
 int RCC_CFGR_PLLSRC ;
 int RCC_CFGR_SWS ;
 int SystemCoreClock ;

void SystemCoreClockUpdate (void)
{
  uint32_t tmp = 0, pllmull = 0, pllsource = 0, prediv1factor = 0;


  tmp = RCC->CFGR & RCC_CFGR_SWS;

  switch (tmp)
  {
    case 0x00:
      SystemCoreClock = HSI_VALUE;
      break;
    case 0x04:
      SystemCoreClock = HSE_VALUE;
      break;
    case 0x08:

      pllmull = RCC->CFGR & RCC_CFGR_PLLMULL;
      pllsource = RCC->CFGR & RCC_CFGR_PLLSRC;
      pllmull = ( pllmull >> 18) + 2;

      if (pllsource == 0x00)
      {

        SystemCoreClock = (HSI_VALUE >> 1) * pllmull;
      }
      else
      {
        prediv1factor = (RCC->CFGR2 & RCC_CFGR2_PREDIV1) + 1;

        SystemCoreClock = (HSE_VALUE / prediv1factor) * pllmull;
      }
      break;
    default:
      SystemCoreClock = HSI_VALUE;
      break;
  }


  tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4)];

  SystemCoreClock >>= tmp;
}
