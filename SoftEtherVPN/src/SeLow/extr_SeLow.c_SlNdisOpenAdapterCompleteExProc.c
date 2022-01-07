
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_18__ {int NumBoundAdapters; int AdapterList; } ;
struct TYPE_17__ {int IsOpenPending; int Ready; int * AdapterHandle; TYPE_3__* Device; int FriendlyName; int AdapterId; scalar_t__ BindingContext; } ;
struct TYPE_16__ {TYPE_4__* Adapter; int FileList; } ;
struct TYPE_14__ {scalar_t__ Buffer; } ;
struct TYPE_15__ {TYPE_1__ String; } ;
typedef TYPE_2__ SL_UNICODE ;
typedef TYPE_3__ SL_DEVICE ;
typedef TYPE_4__ SL_ADAPTER ;
typedef int NDIS_STATUS ;
typedef scalar_t__ NDIS_HANDLE ;


 int InterlockedDecrement (int *) ;
 scalar_t__ NG (int ) ;
 int NdisCompleteBindAdapterEx (scalar_t__,int ) ;
 int OID_GEN_VENDOR_DESCRIPTION ;
 scalar_t__ OK (int ) ;
 int SL_ADAPTER_DEVICE_NAME ;
 int SL_ADAPTER_DEVICE_NAME_SYMBOLIC ;
 int SlAdd (int ,TYPE_4__*) ;
 int SlCopy (scalar_t__,int ,int) ;
 int SlFreeAdapter (TYPE_4__*) ;
 int SlFreeUnicode (TYPE_2__*) ;
 int SlLockList (int ) ;
 TYPE_3__* SlNewDeviceUnicode (TYPE_2__*,TYPE_2__*) ;
 int SlNewList () ;
 TYPE_2__* SlNewUnicode (int ) ;
 int SlSendOidRequest (TYPE_4__*,int,int ,int ,int) ;
 int SlUnlockList (int ) ;
 TYPE_5__* sl ;

void SlNdisOpenAdapterCompleteExProc(NDIS_HANDLE protocol_binding_context, NDIS_STATUS status)
{
 SL_ADAPTER *a = (SL_ADAPTER *)protocol_binding_context;
 bool is_pending = a->IsOpenPending;
 NDIS_HANDLE binding_context = a->BindingContext;

 if (OK(status))
 {

  SL_UNICODE *device_name = SlNewUnicode(SL_ADAPTER_DEVICE_NAME);
  SL_UNICODE *symbolic_name = SlNewUnicode(SL_ADAPTER_DEVICE_NAME_SYMBOLIC);
  SL_DEVICE *dev;


  SlCopy(device_name->String.Buffer + 8, a->AdapterId, sizeof(wchar_t) * 46);
  SlCopy(symbolic_name->String.Buffer + 19, a->AdapterId, sizeof(wchar_t) * 46);

  dev = SlNewDeviceUnicode(device_name, symbolic_name);

  if (dev == ((void*)0))
  {

   SlFreeUnicode(device_name);
   SlFreeUnicode(symbolic_name);
  }
  else
  {

   dev->FileList = SlNewList();
  }
  if (dev != ((void*)0))
  {

   SlSendOidRequest(a, 0, OID_GEN_VENDOR_DESCRIPTION, a->FriendlyName,
    sizeof(a->FriendlyName) - 1);

   dev->Adapter = a;
   a->Device = dev;


   SlLockList(sl->AdapterList);
   {
    SlAdd(sl->AdapterList, a);
   }
   SlUnlockList(sl->AdapterList);
  }
 }
 else
 {

  a->AdapterHandle = ((void*)0);


  SlFreeAdapter(a);

  a = ((void*)0);
 }

 if (is_pending)
 {
  NdisCompleteBindAdapterEx(binding_context, status);
 }

 if (a != ((void*)0))
 {
  a->Ready = 1;
 }

 if (is_pending)
 {
  if (NG(status))
  {
   InterlockedDecrement(&sl->NumBoundAdapters);
  }
 }
}
