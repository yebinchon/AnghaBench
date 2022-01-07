
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int CRangeEnc ;
typedef int CLzmaProb ;


 int RangeEnc_EncodeBit (int *,int *,int) ;

__attribute__((used)) static void RcTree_Encode(CRangeEnc *rc, CLzmaProb *probs, int numBitLevels, uint32_t symbol)
{
  uint32_t m = 1;
  int i;
  for (i = numBitLevels; i != 0;)
  {
    uint32_t bit;
    i--;
    bit = (symbol >> i) & 1;
    RangeEnc_EncodeBit(rc, probs + m, bit);
    m = (m << 1) | bit;
  }
}
