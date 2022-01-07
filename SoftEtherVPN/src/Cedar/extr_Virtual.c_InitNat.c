
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HaltNat; int NativeNat; int NatThread; int SockEvent; int NatTable; } ;
typedef TYPE_1__ VH ;


 int CompareNat ;
 scalar_t__ IsEthSupported () ;
 int NatThread ;
 int NewList (int ) ;
 int NewNativeNat (TYPE_1__*) ;
 int NewSockEvent () ;
 int NewThread (int ,void*) ;
 int WaitThreadInit (int ) ;

void InitNat(VH *v)
{

 if (v == ((void*)0))
 {
  return;
 }


 v->NatTable = NewList(CompareNat);


 v->SockEvent = NewSockEvent();


 v->HaltNat = 0;
 v->NatThread = NewThread(NatThread, (void *)v);
 WaitThreadInit(v->NatThread);

 if (IsEthSupported())
 {

  v->NativeNat = NewNativeNat(v);
 }
}
