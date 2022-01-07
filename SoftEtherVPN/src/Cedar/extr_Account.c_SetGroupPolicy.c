
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int Policy; } ;
typedef TYPE_1__ USERGROUP ;
typedef int POLICY ;


 int Lock (int ) ;
 int OverwritePolicy (int *,int *) ;
 int Unlock (int ) ;

void SetGroupPolicy(USERGROUP *g, POLICY *policy)
{

 if (g == ((void*)0))
 {
  return;
 }

 Lock(g->lock);
 {
  OverwritePolicy(&g->Policy, policy);
 }
 Unlock(g->lock);
}
