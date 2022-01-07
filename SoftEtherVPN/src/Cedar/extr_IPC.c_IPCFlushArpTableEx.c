
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int * ArpTable; } ;
struct TYPE_8__ {int Resolved; scalar_t__ ExpireTime; scalar_t__ GiveupTime; } ;
typedef int LIST ;
typedef TYPE_1__ IPC_ARP ;
typedef TYPE_2__ IPC ;


 int Add (int *,TYPE_1__*) ;
 int Delete (int *,TYPE_1__*) ;
 int IPCFreeARP (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ Tick64 () ;

void IPCFlushArpTableEx(IPC *ipc, UINT64 now)
{
 UINT i;
 LIST *o = ((void*)0);

 if (ipc == ((void*)0))
 {
  return;
 }
 if (now == 0)
 {
  now = Tick64();
 }

 for (i = 0;i < LIST_NUM(ipc->ArpTable);i++)
 {
  IPC_ARP *a = LIST_DATA(ipc->ArpTable, i);
  bool b = 0;

  if (a->Resolved && a->ExpireTime <= now)
  {
   b = 1;
  }
  else if (a->Resolved == 0 && a->GiveupTime <= now)
  {
   b = 1;
  }

  if (b)
  {
   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }

   Add(o, a);
  }
 }

 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   IPC_ARP *a = LIST_DATA(o, i);

   IPCFreeARP(a);

   Delete(ipc->ArpTable, a);
  }

  ReleaseList(o);
 }
}
