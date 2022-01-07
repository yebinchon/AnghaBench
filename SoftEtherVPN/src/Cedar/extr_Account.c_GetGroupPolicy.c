
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int * Policy; } ;
typedef TYPE_1__ USERGROUP ;
typedef int POLICY ;


 int * ClonePolicy (int *) ;
 int Lock (int ) ;
 int Unlock (int ) ;

POLICY *GetGroupPolicy(USERGROUP *g)
{
 POLICY *ret;

 if (g == ((void*)0))
 {
  return ((void*)0);
 }

 Lock(g->lock);
 {
  if (g->Policy == ((void*)0))
  {
   ret = ((void*)0);
  }
  else
  {
   ret = ClonePolicy(g->Policy);
  }
 }
 Unlock(g->lock);

 return ret;
}
