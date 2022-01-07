
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int NumBoundAdapters; int AdapterList; } ;
struct TYPE_7__ {int Halt; int IsClosePending; int NumPendingOidRequests; int NumPendingSendPackets; int * UnbindContext; int Lock; int * AdapterHandle; TYPE_1__* Device; } ;
struct TYPE_6__ {int Halting; } ;
typedef TYPE_2__ SL_ADAPTER ;
typedef scalar_t__ NDIS_STATUS ;
typedef int * NDIS_HANDLE ;


 int InterlockedDecrement (int *) ;
 scalar_t__ NDIS_STATUS_PENDING ;
 scalar_t__ NDIS_STATUS_SUCCESS ;
 scalar_t__ NdisCloseAdapterEx (int *) ;
 int SlDelete (int ,TYPE_2__*) ;
 int SlLock (int ) ;
 int SlLockList (int ) ;
 int SlNdisCloseAdapterCompleteExProc (TYPE_2__*) ;
 int SlUnlock (int ) ;
 int SlUnlockList (int ) ;
 TYPE_3__* sl ;

NDIS_STATUS SlNdisUnbindAdapterExProc(NDIS_HANDLE unbind_context, NDIS_HANDLE protocol_binding_context)
{
 NDIS_STATUS ret;
 SL_ADAPTER *a = (SL_ADAPTER *)protocol_binding_context;
 UINT j;
 NDIS_HANDLE adapter_handle = ((void*)0);

 if (a->Halt)
 {

 }

 adapter_handle = a->AdapterHandle;
 a->Halt = 1;
 if (a->Device != ((void*)0))
 {
  a->Device->Halting = 1;
 }
 a->AdapterHandle = ((void*)0);

 SlLock(a->Lock);
 {
 }
 SlUnlock(a->Lock);

 a->UnbindContext = unbind_context;
 a->IsClosePending = 1;


 SlLockList(sl->AdapterList);
 {
  SlDelete(sl->AdapterList, a);
 }
 SlUnlockList(sl->AdapterList);

 for (j = 0;j < 32;j++)
 {

  while (1)
  {
   UINT num;

   num = a->NumPendingOidRequests;

   if (num == 0)
   {
    break;
   }
   else
   {
    j = 0;
   }


  }


  while (1)
  {
   UINT num;

   num = a->NumPendingSendPackets;

   if (num == 0)
   {
    break;
   }
   else
   {
    j = 0;
   }


  }

 }

 ret = NdisCloseAdapterEx(adapter_handle);

 if (ret != NDIS_STATUS_PENDING)
 {
  a->IsClosePending = 0;
  SlNdisCloseAdapterCompleteExProc(a);

  ret = NDIS_STATUS_SUCCESS;

  InterlockedDecrement(&sl->NumBoundAdapters);
 }

 return ret;
}
