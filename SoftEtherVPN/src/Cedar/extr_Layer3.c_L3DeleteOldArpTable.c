
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ Expire; } ;
struct TYPE_8__ {scalar_t__ LastDeleteOldArpTable; int * ArpTable; } ;
typedef int LIST ;
typedef TYPE_1__ L3IF ;
typedef TYPE_2__ L3ARPENTRY ;


 scalar_t__ ARP_ENTRY_POLLING_TIME ;
 int Delete (int *,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 int Insert (int *,TYPE_2__*) ;
 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ Tick64 () ;

void L3DeleteOldArpTable(L3IF *f)
{
 UINT i;
 LIST *o = ((void*)0);

 if (f == ((void*)0))
 {
  return;
 }

 if ((f->LastDeleteOldArpTable + ARP_ENTRY_POLLING_TIME) > Tick64())
 {
  return;
 }
 f->LastDeleteOldArpTable = Tick64();

 for (i = 0;i < LIST_NUM(f->ArpTable);i++)
 {
  L3ARPENTRY *a = LIST_DATA(f->ArpTable, i);

  if (a->Expire <= Tick64())
  {

   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }

   Insert(o, a);
  }
 }

 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   L3ARPENTRY *a = LIST_DATA(o, i);

   Delete(f->ArpTable, a);
   Free(a);
  }

  ReleaseList(o);
 }
}
