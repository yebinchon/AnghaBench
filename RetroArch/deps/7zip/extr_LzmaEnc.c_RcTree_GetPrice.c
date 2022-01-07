
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int CLzmaProb ;


 scalar_t__ GET_PRICEa (int const,int) ;

__attribute__((used)) static uint32_t RcTree_GetPrice(const CLzmaProb *probs, int numBitLevels, uint32_t symbol, const uint32_t *ProbPrices)
{
  uint32_t price = 0;
  symbol |= (1 << numBitLevels);
  while (symbol != 1)
  {
    price += GET_PRICEa(probs[symbol >> 1], symbol & 1);
    symbol >>= 1;
  }
  return price;
}
