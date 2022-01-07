
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CheatRemoveCodeByIndex (scalar_t__) ;
 scalar_t__ numcheats ;

void CheatClearCodes(void)
{
   while (numcheats > 0)
      CheatRemoveCodeByIndex(numcheats-1);
}
