
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int CLenPriceEnc ;


 int LenPriceEnc_UpdateTable (int *,scalar_t__,scalar_t__ const*) ;

__attribute__((used)) static void LenPriceEnc_UpdateTables(CLenPriceEnc *p, uint32_t numPosStates, const uint32_t *ProbPrices)
{
  uint32_t posState;
  for (posState = 0; posState < numPosStates; posState++)
    LenPriceEnc_UpdateTable(p, posState, ProbPrices);
}
