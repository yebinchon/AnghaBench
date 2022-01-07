
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int streamPos; int pos; int posLimit; } ;
typedef TYPE_1__ CMatchFinder ;



void MatchFinder_ReduceOffsets(CMatchFinder *p, uint32_t subValue)
{
  p->posLimit -= subValue;
  p->pos -= subValue;
  p->streamPos -= subValue;
}
