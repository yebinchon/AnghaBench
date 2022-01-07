
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ range; int low; } ;
typedef TYPE_1__ CRangeEnc ;
typedef scalar_t__ CLzmaProb ;


 int RangeEnc_ShiftLow (TYPE_1__*) ;
 scalar_t__ kBitModelTotal ;
 scalar_t__ kNumBitModelTotalBits ;
 scalar_t__ kNumMoveBits ;
 scalar_t__ kTopValue ;

__attribute__((used)) static void RangeEnc_EncodeBit(CRangeEnc *p, CLzmaProb *prob, uint32_t symbol)
{
  uint32_t ttt = *prob;
  uint32_t newBound = (p->range >> kNumBitModelTotalBits) * ttt;
  if (symbol == 0)
  {
    p->range = newBound;
    ttt += (kBitModelTotal - ttt) >> kNumMoveBits;
  }
  else
  {
    p->low += newBound;
    p->range -= newBound;
    ttt -= ttt >> kNumMoveBits;
  }
  *prob = (CLzmaProb)ttt;
  if (p->range < kTopValue)
  {
    p->range <<= 8;
    RangeEnc_ShiftLow(p);
  }
}
