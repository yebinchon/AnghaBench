
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int STA; } ;
typedef scalar_t__ ITStatus ;


 int IS_SDIO_GET_IT (int) ;
 scalar_t__ RESET ;
 TYPE_1__* SDIO ;
 scalar_t__ SET ;
 int assert_param (int ) ;

ITStatus SDIO_GetITStatus(uint32_t SDIO_IT)
{
  ITStatus bitstatus = RESET;


  assert_param(IS_SDIO_GET_IT(SDIO_IT));
  if ((SDIO->STA & SDIO_IT) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}
