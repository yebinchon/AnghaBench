
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 int ** dphaseARTable ;
 int rate_adjust (int) ;

__attribute__((used)) static void makeDphaseARTable(void) {
 int32 AR, Rks, RM, RL;
 for (AR = 0; AR < 16; AR++)
  for (Rks = 0; Rks < 16; Rks++) {
   RM = AR + (Rks >> 2);
   RL = Rks & 3;
   if (RM > 15)
    RM = 15;
   switch (AR) {
   case 0:
    dphaseARTable[AR][Rks] = 0;
    break;
   case 15:
    dphaseARTable[AR][Rks] = 0;
    break;
   default:
    dphaseARTable[AR][Rks] = rate_adjust(3 * (RL + 4) << (RM + 1));
    break;
   }
  }
}
