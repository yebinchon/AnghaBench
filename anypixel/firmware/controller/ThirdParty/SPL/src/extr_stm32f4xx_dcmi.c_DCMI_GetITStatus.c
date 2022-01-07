
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int MISR; } ;
typedef scalar_t__ ITStatus ;


 TYPE_1__* DCMI ;
 int IS_DCMI_GET_IT (int) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

ITStatus DCMI_GetITStatus(uint16_t DCMI_IT)
{
  ITStatus bitstatus = RESET;
  uint32_t itstatus = 0;


  assert_param(IS_DCMI_GET_IT(DCMI_IT));

  itstatus = DCMI->MISR & DCMI_IT;

  if ((itstatus != (uint16_t)RESET))
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}
