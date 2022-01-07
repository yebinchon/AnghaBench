
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_15__ {int AllList; } ;
struct TYPE_14__ {int Halt; TYPE_7__* NatTableForRecv; TYPE_7__* NatTableForSend; int Cancel; int SendQueue; int RecvQueue; TYPE_1__* HaltTube3; TYPE_1__* HaltTube2; int HaltEvent; int CancelLock; int Lock; int Thread; TYPE_1__* HaltTube; } ;
struct TYPE_13__ {int Ref; } ;
typedef TYPE_1__ TUBE ;
typedef TYPE_2__ NATIVE_NAT_ENTRY ;
typedef TYPE_2__ NATIVE_NAT ;


 int AddRef (int ) ;
 int DeleteLock (int ) ;
 int Free (TYPE_2__*) ;
 int INFINITE ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int NnClearQueue (TYPE_2__*) ;
 int NnFreeIpCombineList (TYPE_2__*) ;
 int ReleaseCancel (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseHashList (TYPE_7__*) ;
 int ReleaseQueue (int ) ;
 int ReleaseThread (int ) ;
 int ReleaseTube (TYPE_1__*) ;
 int Set (int ) ;
 int SleepThread (int) ;
 int TubeDisconnect (TYPE_1__*) ;
 int TubeFlushEx (TYPE_1__*,int) ;
 int Unlock (int ) ;
 int WaitThread (int ,int ) ;

void FreeNativeNat(NATIVE_NAT *t)
{
 TUBE *tube;
 UINT i;

 if (t == ((void*)0))
 {
  return;
 }

 t->Halt = 1;

 Lock(t->Lock);
 {
  tube = t->HaltTube;

  if (tube != ((void*)0))
  {
   AddRef(tube->Ref);
  }
 }
 Unlock(t->Lock);

 if (tube != ((void*)0))
 {
  TubeFlushEx(tube, 1);

  SleepThread(100);

  TubeDisconnect(tube);

  ReleaseTube(tube);
 }

 TubeDisconnect(t->HaltTube2);
 TubeDisconnect(t->HaltTube3);

 Set(t->HaltEvent);

 WaitThread(t->Thread, INFINITE);

 ReleaseThread(t->Thread);

 DeleteLock(t->Lock);

 DeleteLock(t->CancelLock);

 ReleaseEvent(t->HaltEvent);

 ReleaseTube(t->HaltTube2);
 ReleaseTube(t->HaltTube3);

 NnClearQueue(t);

 ReleaseQueue(t->RecvQueue);
 ReleaseQueue(t->SendQueue);

 ReleaseCancel(t->Cancel);


 for (i = 0;i < LIST_NUM(t->NatTableForSend->AllList);i++)
 {
  NATIVE_NAT_ENTRY *e = LIST_DATA(t->NatTableForSend->AllList, i);

  Free(e);
 }

 ReleaseHashList(t->NatTableForSend);
 ReleaseHashList(t->NatTableForRecv);

 NnFreeIpCombineList(t);

 Free(t);
}
