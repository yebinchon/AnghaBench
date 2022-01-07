
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int CR; } ;
struct TYPE_3__ {int WRP0; int WRP1; int WRP2; int WRP3; } ;
typedef scalar_t__ FLASH_Status ;


 TYPE_2__* FLASH ;
 scalar_t__ FLASH_COMPLETE ;
 int FLASH_CR_OPTPG ;
 int FLASH_ER_PRG_TIMEOUT ;
 scalar_t__ FLASH_TIMEOUT ;
 scalar_t__ FLASH_WaitForLastOperation (int ) ;
 int IS_OB_WRP (int) ;
 TYPE_1__* OB ;
 int OB_WRP0_WRP0 ;
 int assert_param (int ) ;

FLASH_Status FLASH_OB_EnableWRP(uint32_t OB_WRP)
{
 uint16_t WRP0_Data = 0xFFFF, WRP1_Data = 0xFFFF, WRP2_Data = 0xFFFF, WRP3_Data = 0xFFFF;

  FLASH_Status status = FLASH_COMPLETE;


  assert_param(IS_OB_WRP(OB_WRP));

  OB_WRP = (uint32_t)(~OB_WRP);
  WRP0_Data = (uint16_t)(OB_WRP & OB_WRP0_WRP0);
  WRP1_Data = (uint16_t)((OB_WRP >> 8) & OB_WRP0_WRP0);
  WRP2_Data = (uint16_t)((OB_WRP >> 16) & OB_WRP0_WRP0) ;
  WRP3_Data = (uint16_t)((OB_WRP >> 24) & OB_WRP0_WRP0) ;


  status = FLASH_WaitForLastOperation(FLASH_ER_PRG_TIMEOUT);

  if(status == FLASH_COMPLETE)
  {
    FLASH->CR |= FLASH_CR_OPTPG;

    if(WRP0_Data != 0xFF)
    {
      OB->WRP0 = WRP0_Data;


      status = FLASH_WaitForLastOperation(FLASH_ER_PRG_TIMEOUT);
    }
    if((status == FLASH_COMPLETE) && (WRP1_Data != 0xFF))
    {
      OB->WRP1 = WRP1_Data;


      status = FLASH_WaitForLastOperation(FLASH_ER_PRG_TIMEOUT);
    }
    if((status == FLASH_COMPLETE) && (WRP2_Data != 0xFF))
    {
      OB->WRP2 = WRP2_Data;


      status = FLASH_WaitForLastOperation(FLASH_ER_PRG_TIMEOUT);
    }
    if((status == FLASH_COMPLETE) && (WRP3_Data != 0xFF))
    {
      OB->WRP3 = WRP3_Data;


      status = FLASH_WaitForLastOperation(FLASH_ER_PRG_TIMEOUT);
    }
    if(status != FLASH_TIMEOUT)
    {

      FLASH->CR &= ~FLASH_CR_OPTPG;
    }
  }

  return status;
}
