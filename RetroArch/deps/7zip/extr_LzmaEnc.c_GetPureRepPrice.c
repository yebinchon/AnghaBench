
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {int * isRepG2; int * isRepG1; int * isRepG0; int ** isRep0Long; } ;
typedef TYPE_1__ CLzmaEnc ;


 size_t GET_PRICE (int ,size_t) ;
 size_t GET_PRICE_0 (int ) ;
 size_t GET_PRICE_1 (int ) ;

__attribute__((used)) static uint32_t GetPureRepPrice(CLzmaEnc *p, uint32_t repIndex, uint32_t state, uint32_t posState)
{
  uint32_t price;
  if (repIndex == 0)
  {
    price = GET_PRICE_0(p->isRepG0[state]);
    price += GET_PRICE_1(p->isRep0Long[state][posState]);
  }
  else
  {
    price = GET_PRICE_1(p->isRepG0[state]);
    if (repIndex == 1)
      price += GET_PRICE_0(p->isRepG1[state]);
    else
    {
      price += GET_PRICE_1(p->isRepG1[state]);
      price += GET_PRICE(p->isRepG2[state], repIndex - 2);
    }
  }
  return price;
}
