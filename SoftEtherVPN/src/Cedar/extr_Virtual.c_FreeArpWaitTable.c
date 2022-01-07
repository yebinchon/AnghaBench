
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ArpWaitTable; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
typedef int ARP_WAIT ;


 int Free (int *) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void FreeArpWaitTable(VH *v)
{
 UINT i;

 if (v == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(v->ArpWaitTable);i++)
 {
  ARP_WAIT *w = LIST_DATA(v->ArpWaitTable, i);

  Free(w);
 }

 ReleaseList(v->ArpWaitTable);
}
