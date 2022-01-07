
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * litProbs; } ;
struct TYPE_10__ {TYPE_1__ saveState; int * litProbs; } ;
struct TYPE_9__ {int (* Free ) (TYPE_2__*,int *) ;} ;
typedef TYPE_2__ ISzAlloc ;
typedef TYPE_3__ CLzmaEnc ;


 int stub1 (TYPE_2__*,int *) ;
 int stub2 (TYPE_2__*,int *) ;

void LzmaEnc_FreeLits(CLzmaEnc *p, ISzAlloc *alloc)
{
  alloc->Free(alloc, p->litProbs);
  alloc->Free(alloc, p->saveState.litProbs);
  p->litProbs = ((void*)0);
  p->saveState.litProbs = ((void*)0);
}
