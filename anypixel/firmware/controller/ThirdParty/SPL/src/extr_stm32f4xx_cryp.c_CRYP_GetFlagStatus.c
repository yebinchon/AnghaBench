
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int RISR; int SR; } ;
typedef scalar_t__ FlagStatus ;


 TYPE_1__* CRYP ;
 int FLAG_MASK ;
 int IS_CRYP_GET_FLAG (int) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

FlagStatus CRYP_GetFlagStatus(uint8_t CRYP_FLAG)
{
  FlagStatus bitstatus = RESET;
  uint32_t tempreg = 0;


  assert_param(IS_CRYP_GET_FLAG(CRYP_FLAG));


  if ((CRYP_FLAG & FLAG_MASK) != 0x00)
  {
    tempreg = CRYP->RISR;
  }
  else
  {
    tempreg = CRYP->SR;
  }



  if ((tempreg & CRYP_FLAG ) != (uint8_t)RESET)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }


  return bitstatus;
}
