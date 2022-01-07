
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ ACR; } ;


 TYPE_1__* FLASH ;
 scalar_t__ FLASH_ACR_LATENCY ;
 int IS_FLASH_LATENCY (scalar_t__) ;
 int assert_param (int ) ;

void FLASH_SetLatency(uint32_t FLASH_Latency)
{
   uint32_t tmpreg = 0;


  assert_param(IS_FLASH_LATENCY(FLASH_Latency));


  tmpreg = FLASH->ACR;


  tmpreg &= (uint32_t) (~((uint32_t)FLASH_ACR_LATENCY));
  tmpreg |= FLASH_Latency;


  FLASH->ACR = tmpreg;
}
