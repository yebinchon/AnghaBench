
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


typedef int macstr ;
struct TYPE_22__ {int Ref; } ;
struct TYPE_21__ {int Halt; int IsRawIpMode; int Active; scalar_t__ NextWaitTimeForRetry; int HaltEvent; int CurrentMacAddress; int Lock; TYPE_7__* HaltTube; scalar_t__ PublicIP; TYPE_13__* v; } ;
struct TYPE_19__ {int ServerAddress; } ;
struct TYPE_20__ {int IsIpRawMode; int DnsServerIP; TYPE_4__ CurrentDhcpOptionList; TYPE_3__* Ipc; int DeviceName; TYPE_2__* Sock2; int * Sock1; } ;
struct TYPE_18__ {int BroadcastAddress; int DefaultGateway; int SubnetMask; int ClientIPAddress; int MacAddress; } ;
struct TYPE_17__ {TYPE_7__* RecvTube; } ;
struct TYPE_16__ {scalar_t__ DisableIpRawModeSecureNAT; scalar_t__ DisableKernelModeSecureNAT; } ;
struct TYPE_15__ {int UseNat; TYPE_1__* HubOption; } ;
typedef int THREAD ;
typedef TYPE_5__ NATIVE_STACK ;
typedef TYPE_6__ NATIVE_NAT ;


 int AddRef (int ) ;
 int Debug (char*,...) ;
 int FreeNativeStack (TYPE_5__*) ;
 int FreeWaitUntilHostIPAddressChanged (void*) ;
 scalar_t__ IPToUINT (int *) ;
 void* InitWaitUntilHostIPAddressChanged () ;
 int Lock (int ) ;
 int MacToStr (char*,int,int ) ;
 int NLog (TYPE_13__*,char*,int ,int *,int *,int *,int *,char*,int *,int *) ;
 int NnClearQueue (TYPE_6__*) ;
 TYPE_5__* NnGetNextInterface (TYPE_6__*) ;
 int NnMainLoop (TYPE_6__*,TYPE_5__*) ;
 int ReleaseTube (TYPE_7__*) ;
 int Unlock (int ) ;
 int Wait (int ,int) ;
 int WaitUntilHostIPAddressChanged (void*,int ,scalar_t__,int) ;
 int Zero (int ,int) ;

void NativeNatThread(THREAD *thread, void *param)
{
 NATIVE_NAT *t = (NATIVE_NAT *)param;
 void *wait_handle = InitWaitUntilHostIPAddressChanged();

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 while (t->Halt == 0)
 {
  NATIVE_STACK *a;

  while (t->v->UseNat == 0 || t->v->HubOption == ((void*)0) || (t->v->HubOption->DisableKernelModeSecureNAT && t->v->HubOption->DisableIpRawModeSecureNAT))
  {
   if (t->Halt)
   {
    break;
   }


   Wait(t->HaltEvent, 1234);
  }

  if (t->Halt)
  {
   break;
  }


  Debug("NnGetNextInterface Start.\n");

  NnClearQueue(t);

  a = NnGetNextInterface(t);

  if (a != ((void*)0))
  {
   char macstr[64];

   Debug("NnGetNextInterface Ok: %s\n", a->DeviceName);

   t->IsRawIpMode = a->IsIpRawMode;

   Lock(t->Lock);
   {
    if (a->Sock1 != ((void*)0))
    {
     t->HaltTube = a->Sock2->RecvTube;

     if (t->HaltTube != ((void*)0))
     {
      AddRef(t->HaltTube->Ref);
     }
    }
   }
   Unlock(t->Lock);

   NnClearQueue(t);

   t->PublicIP = IPToUINT(&a->Ipc->ClientIPAddress);
   t->Active = 1;


   Debug("NnMainLoop Start.\n");
   MacToStr(macstr, sizeof(macstr), a->Ipc->MacAddress);
   NLog(t->v, "LH_KERNEL_MODE_START", a->DeviceName,
    &a->Ipc->ClientIPAddress, &a->Ipc->SubnetMask, &a->Ipc->DefaultGateway, &a->Ipc->BroadcastAddress,
    macstr, &a->CurrentDhcpOptionList.ServerAddress, &a->DnsServerIP);
   NnMainLoop(t, a);
   Debug("NnMainLoop End.\n");

   t->IsRawIpMode = 0;

   t->Active = 0;
   t->PublicIP = 0;


   NnClearQueue(t);


   Lock(t->Lock);
   {
    if (t->HaltTube != ((void*)0))
    {
     ReleaseTube(t->HaltTube);
     t->HaltTube = ((void*)0);
    }
   }
   Unlock(t->Lock);
   FreeNativeStack(a);

   Zero(t->CurrentMacAddress, 6);
  }
  else
  {
   Debug("NnGetNextInterface Failed.\n");
  }


  if (t->NextWaitTimeForRetry != 0)
  {
   WaitUntilHostIPAddressChanged(wait_handle, t->HaltEvent, t->NextWaitTimeForRetry, 1000);
  }
 }

 FreeWaitUntilHostIPAddressChanged(wait_handle);
}
