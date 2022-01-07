
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HaltNat; int NatTable; int * SockEvent; int * NatThread; int * NativeNat; } ;
typedef TYPE_1__ VH ;


 int FreeNativeNat (int *) ;
 int INFINITE ;
 int ReleaseList (int ) ;
 int ReleaseSockEvent (int *) ;
 int ReleaseThread (int *) ;
 int SetSockEvent (int *) ;
 int WaitThread (int *,int ) ;

void FreeNat(VH *v)
{

 if (v == ((void*)0))
 {
  return;
 }


 if (v->NativeNat != ((void*)0))
 {
  FreeNativeNat(v->NativeNat);
  v->NativeNat = ((void*)0);
 }


 v->HaltNat = 1;
 SetSockEvent(v->SockEvent);
 WaitThread(v->NatThread, INFINITE);
 ReleaseThread(v->NatThread);
 v->NatThread = ((void*)0);
 ReleaseSockEvent(v->SockEvent);
 v->SockEvent = ((void*)0);


 ReleaseList(v->NatTable);
}
