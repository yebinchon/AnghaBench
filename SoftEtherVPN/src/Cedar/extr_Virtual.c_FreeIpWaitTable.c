
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int IpWaitTable; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {struct TYPE_7__* Data; } ;
typedef TYPE_2__ IP_WAIT ;


 int Free (TYPE_2__*) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void FreeIpWaitTable(VH *v)
{
 UINT i;

 if (v == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(v->IpWaitTable);i++)
 {
  IP_WAIT *w = LIST_DATA(v->IpWaitTable, i);

  Free(w->Data);
  Free(w);
 }

 ReleaseList(v->IpWaitTable);
}
