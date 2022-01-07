
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ USERGROUP ;


 int CleanupGroup (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseGroup(USERGROUP *g)
{

 if (g == ((void*)0))
 {
  return;
 }

 if (Release(g->ref) == 0)
 {
  CleanupGroup(g);
 }
}
