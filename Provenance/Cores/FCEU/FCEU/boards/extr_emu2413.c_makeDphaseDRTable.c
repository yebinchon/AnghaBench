
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 int ** dphaseDRTable ;
 int rate_adjust (int) ;

__attribute__((used)) static void makeDphaseDRTable(void) {
 int32 DR, Rks, RM, RL;

 for (DR = 0; DR < 16; DR++)
  for (Rks = 0; Rks < 16; Rks++) {
   RM = DR + (Rks >> 2);
   RL = Rks & 3;
   if (RM > 15)
    RM = 15;
   switch (DR) {
   case 0:
    dphaseDRTable[DR][Rks] = 0;
    break;
   default:
    dphaseDRTable[DR][Rks] = rate_adjust((RL + 4) << (RM - 1));
    break;
   }
  }
}
