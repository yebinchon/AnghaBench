
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int Active; int Logger; int Cancel; int * SendQueue; } ;
typedef TYPE_1__ VH ;
typedef int BLOCK ;


 int FreeArpTable (TYPE_1__*) ;
 int FreeArpWaitTable (TYPE_1__*) ;
 int FreeBlock (int *) ;
 int FreeDhcpServer (TYPE_1__*) ;
 int FreeIpCombineList (TYPE_1__*) ;
 int FreeIpWaitTable (TYPE_1__*) ;
 int FreeLog (int ) ;
 int FreeNat (TYPE_1__*) ;
 int * GetNext (int *) ;
 int LockQueue (int *) ;
 int LockVirtual (TYPE_1__*) ;
 int ReleaseCancel (int ) ;
 int ReleaseQueue (int *) ;
 int UnlockQueue (int *) ;
 int UnlockVirtual (TYPE_1__*) ;

void Virtual_Free(VH *v)
{

 FreeDhcpServer(v);


 FreeNat(v);

 LockVirtual(v);
 {

  FreeIpCombineList(v);


  FreeIpWaitTable(v);


  FreeArpWaitTable(v);


  FreeArpTable(v);


  LockQueue(v->SendQueue);
  {
   BLOCK *block;


   while (block = GetNext(v->SendQueue))
   {
    FreeBlock(block);
   }
  }
  UnlockQueue(v->SendQueue);
  ReleaseQueue(v->SendQueue);
  v->SendQueue = ((void*)0);


  ReleaseCancel(v->Cancel);

  v->Active = 0;
 }
 UnlockVirtual(v);


 FreeLog(v->Logger);
}
