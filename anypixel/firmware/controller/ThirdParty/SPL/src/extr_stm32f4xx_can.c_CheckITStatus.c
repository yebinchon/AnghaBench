
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ ITStatus ;


 scalar_t__ RESET ;
 scalar_t__ SET ;

__attribute__((used)) static ITStatus CheckITStatus(uint32_t CAN_Reg, uint32_t It_Bit)
{
  ITStatus pendingbitstatus = RESET;

  if ((CAN_Reg & It_Bit) != (uint32_t)RESET)
  {

    pendingbitstatus = SET;
  }
  else
  {

    pendingbitstatus = RESET;
  }
  return pendingbitstatus;
}
