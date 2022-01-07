
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int CLzmaProb ;


 scalar_t__ GET_PRICEa (int const,int) ;

__attribute__((used)) static uint32_t RcTree_ReverseGetPrice(const CLzmaProb *probs, int numBitLevels, uint32_t symbol, const uint32_t *ProbPrices)
{
  uint32_t price = 0;
  uint32_t m = 1;
  int i;
  for (i = numBitLevels; i != 0; i--)
  {
    uint32_t bit = symbol & 1;
    symbol >>= 1;
    price += GET_PRICEa(probs[m], bit);
    m = (m << 1) | bit;
  }
  return price;
}
