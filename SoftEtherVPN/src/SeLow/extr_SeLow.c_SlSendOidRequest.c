
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_14__ {TYPE_6__* InformationBuffer; scalar_t__ InformationBufferLength; void* Oid; } ;
struct TYPE_13__ {scalar_t__ InformationBufferLength; void* InformationBuffer; void* Oid; } ;
struct TYPE_15__ {TYPE_3__ SET_INFORMATION; TYPE_2__ QUERY_INFORMATION; } ;
struct TYPE_12__ {int Size; int Revision; int Type; } ;
struct TYPE_17__ {TYPE_4__ DATA; int RequestType; TYPE_1__ Header; } ;
struct TYPE_16__ {int Halt; int NumPendingOidRequests; int * AdapterHandle; int Lock; } ;
typedef TYPE_5__ SL_ADAPTER ;
typedef scalar_t__ NDIS_STATUS ;
typedef TYPE_6__ NDIS_OID_REQUEST ;
typedef void* NDIS_OID ;


 int InterlockedDecrement (int *) ;
 int InterlockedIncrement (int *) ;
 int NDIS_OBJECT_TYPE_OID_REQUEST ;
 int NDIS_OID_REQUEST_REVISION_1 ;
 int NDIS_SIZEOF_OID_REQUEST_REVISION_1 ;
 scalar_t__ NDIS_STATUS_PENDING ;
 scalar_t__ NdisOidRequest (int *,TYPE_6__*) ;
 int NdisRequestQueryInformation ;
 int NdisRequestSetInformation ;
 TYPE_6__* SlClone (void*,scalar_t__) ;
 int SlFree (TYPE_6__*) ;
 int SlLock (int ) ;
 int SlUnlock (int ) ;
 TYPE_6__* SlZeroMalloc (int) ;

void SlSendOidRequest(SL_ADAPTER *a, bool set, NDIS_OID oid, void *data, UINT size)
{
 NDIS_OID_REQUEST *t;
 NDIS_STATUS ret;

 if (a == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return;
 }

 if (a->Halt == 0)
 {
  bool ok = 0;

  t = SlZeroMalloc(sizeof(NDIS_OID_REQUEST));

  t->Header.Type = NDIS_OBJECT_TYPE_OID_REQUEST;
  t->Header.Revision = NDIS_OID_REQUEST_REVISION_1;
  t->Header.Size = NDIS_SIZEOF_OID_REQUEST_REVISION_1;

  if (set == 0)
  {
   t->RequestType = NdisRequestQueryInformation;
   t->DATA.QUERY_INFORMATION.Oid = oid;
   t->DATA.QUERY_INFORMATION.InformationBuffer = data;
   t->DATA.QUERY_INFORMATION.InformationBufferLength = size;
  }
  else
  {
   t->RequestType = NdisRequestSetInformation;
   t->DATA.SET_INFORMATION.Oid = oid;
   t->DATA.SET_INFORMATION.InformationBuffer = SlClone(data, size);
   t->DATA.SET_INFORMATION.InformationBufferLength = size;
  }

  SlLock(a->Lock);
  {
   if (a->AdapterHandle != ((void*)0) && a->Halt == 0)
   {
    InterlockedIncrement(&a->NumPendingOidRequests);
    ok = 1;
   }
  }
  SlUnlock(a->Lock);

  if (ok)
  {
   ret = NdisOidRequest(a->AdapterHandle, t);

   if (ret != NDIS_STATUS_PENDING)
   {
    InterlockedDecrement(&a->NumPendingOidRequests);
    if (set)
    {
     SlFree(t->DATA.SET_INFORMATION.InformationBuffer);
    }
    SlFree(t);
   }
  }
  else
  {
   if (set)
   {
    SlFree(t->DATA.SET_INFORMATION.InformationBuffer);
   }
   SlFree(t);
  }
 }
}
