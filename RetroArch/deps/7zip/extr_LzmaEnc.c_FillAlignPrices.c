
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {scalar_t__ alignPriceCount; int ProbPrices; int posAlignEncoder; int * alignPrices; } ;
typedef TYPE_1__ CLzmaEnc ;


 int RcTree_ReverseGetPrice (int ,int ,size_t,int ) ;
 size_t kAlignTableSize ;
 int kNumAlignBits ;

__attribute__((used)) static void FillAlignPrices(CLzmaEnc *p)
{
  uint32_t i;
  for (i = 0; i < kAlignTableSize; i++)
    p->alignPrices[i] = RcTree_ReverseGetPrice(p->posAlignEncoder, kNumAlignBits, i, p->ProbPrices);
  p->alignPriceCount = 0;
}
