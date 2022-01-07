
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int type; scalar_t__ addr; scalar_t__ val; } ;


 TYPE_1__* cheatlist ;
 int numcheats ;

__attribute__((used)) static int FindCheat(int type, u32 addr, u32 val)
{
   int i;

   for (i = 0; i < numcheats; i++)
   {
      if (cheatlist[i].type == type &&
          cheatlist[i].addr == addr &&
          cheatlist[i].val == val)
         return i;
   }

   return -1;
}
