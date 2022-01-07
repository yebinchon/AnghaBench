
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ SR; } ;
typedef scalar_t__ FlagStatus ;


 scalar_t__ RESET ;
 scalar_t__ SET ;
 TYPE_1__* WWDG ;

FlagStatus WWDG_GetFlagStatus(void)
{
  FlagStatus bitstatus = RESET;

  if ((WWDG->SR) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}
