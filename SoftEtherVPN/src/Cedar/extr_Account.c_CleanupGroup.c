
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int Traffic; struct TYPE_4__* Policy; struct TYPE_4__* Note; struct TYPE_4__* RealName; struct TYPE_4__* Name; } ;
typedef TYPE_1__ USERGROUP ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int FreeTraffic (int ) ;

void CleanupGroup(USERGROUP *g)
{

 if (g == ((void*)0))
 {
  return;
 }

 Free(g->Name);
 Free(g->RealName);
 Free(g->Note);

 if (g->Policy)
 {

  Free(g->Policy);
 }


 FreeTraffic(g->Traffic);

 DeleteLock(g->lock);
 Free(g);
}
