
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ Now; int * ArpTable; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ Expire; } ;
typedef int LIST ;
typedef TYPE_2__ ARP_ENTRY ;


 int Add (int *,TYPE_2__*) ;
 int Delete (int *,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;

void RefreshArpTable(VH *v)
{
 UINT i;
 LIST *o;

 if (v == ((void*)0))
 {
  return;
 }

 o = NewListFast(((void*)0));
 for (i = 0;i < LIST_NUM(v->ArpTable);i++)
 {
  ARP_ENTRY *e = LIST_DATA(v->ArpTable, i);


  if (e->Expire < v->Now)
  {

   Add(o, e);
  }
 }


 for (i = 0;i < LIST_NUM(o);i++)
 {
  ARP_ENTRY *e = LIST_DATA(o, i);

  Delete(v->ArpTable, e);
  Free(e);
 }

 ReleaseList(o);
}
