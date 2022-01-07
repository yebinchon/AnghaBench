
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * hash; } ;
struct TYPE_6__ {int (* Free ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CMatchFinder ;


 int stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static void MatchFinder_FreeThisClassMemory(CMatchFinder *p, ISzAlloc *alloc)
{
  alloc->Free(alloc, p->hash);
  p->hash = ((void*)0);
}
