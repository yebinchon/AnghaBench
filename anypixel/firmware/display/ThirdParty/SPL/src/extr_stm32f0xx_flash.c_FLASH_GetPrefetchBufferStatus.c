
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ACR; } ;
typedef scalar_t__ FlagStatus ;


 TYPE_1__* FLASH ;
 int FLASH_ACR_PRFTBS ;
 scalar_t__ RESET ;
 scalar_t__ SET ;

FlagStatus FLASH_GetPrefetchBufferStatus(void)
{
  FlagStatus bitstatus = RESET;

  if ((FLASH->ACR & FLASH_ACR_PRFTBS) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }

  return bitstatus;
}
