
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int Policy; } ;
typedef TYPE_1__ USER ;
typedef int POLICY ;


 int Lock (int ) ;
 int OverwritePolicy (int *,int *) ;
 int Unlock (int ) ;

void SetUserPolicy(USER *u, POLICY *policy)
{

 if (u == ((void*)0))
 {
  return;
 }

 Lock(u->lock);
 {
  OverwritePolicy(&u->Policy, policy);
 }
 Unlock(u->lock);
}
