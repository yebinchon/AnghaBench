
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {int ** isRep0Long; int * isRepG0; } ;
typedef TYPE_1__ CLzmaEnc ;


 size_t GET_PRICE_0 (int ) ;

__attribute__((used)) static uint32_t GetRepLen1Price(CLzmaEnc *p, uint32_t state, uint32_t posState)
{
  return
    GET_PRICE_0(p->isRepG0[state]) +
    GET_PRICE_0(p->isRep0Long[state][posState]);
}
