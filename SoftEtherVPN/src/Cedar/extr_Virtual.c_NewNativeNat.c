
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* Cancel; } ;
typedef TYPE_2__ VH ;
struct TYPE_11__ {int Thread; void* NatTableForRecv; void* NatTableForSend; int HaltTube3; int HaltTube2; int HaltEvent; void* CancelLock; void* Lock; void* RecvQueue; void* SendQueue; int LastInterfaceIndex; TYPE_1__* Cancel; TYPE_2__* v; } ;
struct TYPE_9__ {int ref; } ;
typedef TYPE_3__ NATIVE_NAT ;


 int AddRef (int ) ;
 int CmpNativeNatTableForRecv ;
 int CmpNativeNatTableForSend ;
 int GetHashNativeNatTableForRecv ;
 int GetHashNativeNatTableForSend ;
 int INFINITE ;
 int NativeNatThread ;
 int NewEvent () ;
 void* NewHashList (int ,int ,int,int) ;
 void* NewLock () ;
 void* NewQueue () ;
 int NewThread (int ,TYPE_3__*) ;
 int NewTubePair (int *,int *,int ) ;
 int NnInitIpCombineList (TYPE_3__*) ;
 TYPE_3__* ZeroMalloc (int) ;

NATIVE_NAT *NewNativeNat(VH *v)
{
 NATIVE_NAT *t;

 if (v == ((void*)0))
 {
  return ((void*)0);
 }

 t = ZeroMalloc(sizeof(NATIVE_NAT));

 t->v = v;

 t->Cancel = v->Cancel;
 AddRef(t->Cancel->ref);


 t->LastInterfaceIndex = INFINITE;
 t->SendQueue = NewQueue();
 t->RecvQueue = NewQueue();
 NnInitIpCombineList(t);

 t->Lock = NewLock();

 t->CancelLock = NewLock();

 t->HaltEvent = NewEvent();

 NewTubePair(&t->HaltTube2, &t->HaltTube3, 0);


 t->NatTableForSend = NewHashList(GetHashNativeNatTableForSend, CmpNativeNatTableForSend, 11, 1);
 t->NatTableForRecv = NewHashList(GetHashNativeNatTableForRecv, CmpNativeNatTableForRecv, 11, 1);

 t->Thread = NewThread(NativeNatThread, t);

 return t;
}
