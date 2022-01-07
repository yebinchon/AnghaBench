
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int OBR; } ;
typedef scalar_t__ FlagStatus ;


 TYPE_1__* FLASH ;
 int FLASH_OBR_RDPRT1 ;
 int FLASH_OBR_RDPRT2 ;
 scalar_t__ RESET ;
 scalar_t__ SET ;

FlagStatus FLASH_OB_GetRDP(void)
{
  FlagStatus readstatus = RESET;

  if ((uint8_t)(FLASH->OBR & (FLASH_OBR_RDPRT1 | FLASH_OBR_RDPRT2)) != RESET)
  {
    readstatus = SET;
  }
  else
  {
    readstatus = RESET;
  }
  return readstatus;
}
