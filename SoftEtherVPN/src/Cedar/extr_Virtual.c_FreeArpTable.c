
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ArpTable; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
typedef int ARP_ENTRY ;


 int Free (int *) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void FreeArpTable(VH *v)
{
 UINT i;

 if (v == ((void*)0))
 {
  return;
 }


 for (i = 0;i < LIST_NUM(v->ArpTable);i++)
 {
  ARP_ENTRY *e = LIST_DATA(v->ArpTable, i);
  Free(e);
 }
 ReleaseList(v->ArpTable);
}
