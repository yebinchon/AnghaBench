
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ISzAlloc ;
typedef int CMatchFinder ;


 int LzInWindow_Free (int *,int *) ;
 int MatchFinder_FreeThisClassMemory (int *,int *) ;

void MatchFinder_Free(CMatchFinder *p, ISzAlloc *alloc)
{
  MatchFinder_FreeThisClassMemory(p, alloc);
  LzInWindow_Free(p, alloc);
}
