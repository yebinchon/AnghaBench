
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_3__ {int TickList; } ;
typedef TYPE_1__ INTERRUPT_MANAGER ;


 int Clone (scalar_t__*,int) ;
 int Insert (int ,int ) ;
 int LockList (int ) ;
 int * Search (int ,scalar_t__*) ;
 int UnlockList (int ) ;

void AddInterrupt(INTERRUPT_MANAGER *m, UINT64 tick)
{

 if (tick == 0)
 {
  return;
 }

 LockList(m->TickList);
 {
  if (Search(m->TickList, &tick) == ((void*)0))
  {
   Insert(m->TickList, Clone(&tick, sizeof(UINT64)));
  }
 }
 UnlockList(m->TickList);
}
