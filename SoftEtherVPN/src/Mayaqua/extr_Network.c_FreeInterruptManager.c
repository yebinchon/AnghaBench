
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int TickList; } ;
typedef TYPE_1__ UINT64 ;
typedef scalar_t__ UINT ;
typedef TYPE_1__ INTERRUPT_MANAGER ;


 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void FreeInterruptManager(INTERRUPT_MANAGER *m)
{
 UINT i;

 if (m == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(m->TickList);i++)
 {
  UINT64 *v = LIST_DATA(m->TickList, i);

  Free(v);
 }

 ReleaseList(m->TickList);

 Free(m);
}
