
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pos; scalar_t__ keepSizeAfter; scalar_t__ streamPos; scalar_t__ cyclicBufferPos; scalar_t__ cyclicBufferSize; int streamEndWasReached; } ;
typedef TYPE_1__ CMatchFinder ;


 int MatchFinder_CheckAndMoveAndRead (TYPE_1__*) ;
 int MatchFinder_Normalize (TYPE_1__*) ;
 int MatchFinder_SetLimits (TYPE_1__*) ;
 scalar_t__ kMaxValForNormalize ;

__attribute__((used)) static void MatchFinder_CheckLimits(CMatchFinder *p)
{
  if (p->pos == kMaxValForNormalize)
    MatchFinder_Normalize(p);
  if (!p->streamEndWasReached && p->keepSizeAfter == p->streamPos - p->pos)
    MatchFinder_CheckAndMoveAndRead(p);
  if (p->cyclicBufferPos == p->cyclicBufferSize)
    p->cyclicBufferPos = 0;
  MatchFinder_SetLimits(p);
}
