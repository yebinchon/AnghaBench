
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int FifoBudgetLock; scalar_t__ FifoBudget; } ;
typedef TYPE_1__ CEDAR ;


 int Lock (int ) ;
 int Unlock (int ) ;

void CedarAddFifoBudget(CEDAR *c, int diff)
{

 if (c == ((void*)0) || diff == 0)
 {
  return;
 }

 Lock(c->FifoBudgetLock);
 {
  int v = (int)c->FifoBudget;
  v += diff;
  c->FifoBudget = (UINT)v;
 }
 Unlock(c->FifoBudgetLock);
}
