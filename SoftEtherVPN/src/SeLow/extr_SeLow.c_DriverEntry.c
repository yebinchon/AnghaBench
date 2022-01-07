
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int t ;
typedef int UNICODE_STRING ;
struct TYPE_22__ {int IsBasicDevice; } ;
struct TYPE_21__ {int (* DriverUnload ) (TYPE_4__*) ;TYPE_3__* MajorFunction; } ;
struct TYPE_18__ {int Size; int Revision; int Type; } ;
struct TYPE_20__ {int MajorNdisVersion; int MinorNdisVersion; TYPE_9__* BasicDevice; int * ProtocolHandle; int AdapterList; TYPE_4__* DriverObject; int SendNetBufferListsCompleteHandler; int ReceiveNetBufferListsHandler; int StatusHandlerEx; int OidRequestCompleteHandler; int UninstallHandler; int NetPnPEventHandler; int CloseAdapterCompleteHandlerEx; int OpenAdapterCompleteHandlerEx; int UnbindAdapterHandlerEx; int BindAdapterHandlerEx; int Name; TYPE_1__ Header; } ;
struct TYPE_19__ {int String; } ;
typedef TYPE_2__ SL_UNICODE ;
typedef int SL_CTX ;
typedef int NDIS_STATUS ;
typedef TYPE_3__ NDIS_PROTOCOL_DRIVER_CHARACTERISTICS ;
typedef int * NDIS_HANDLE ;
typedef TYPE_4__ DRIVER_OBJECT ;
typedef int DEVICE_OBJECT ;


 size_t IRP_MJ_CLOSE ;
 size_t IRP_MJ_CREATE ;
 size_t IRP_MJ_DEVICE_CONTROL ;
 size_t IRP_MJ_READ ;
 size_t IRP_MJ_WRITE ;
 int NDIS_OBJECT_TYPE_PROTOCOL_DRIVER_CHARACTERISTICS ;
 int NDIS_PROTOCOL_DRIVER_CHARACTERISTICS_REVISION_2 ;
 int NDIS_SIZEOF_PROTOCOL_DRIVER_CHARACTERISTICS_REVISION_2 ;
 int NDIS_STATUS_FAILURE ;
 scalar_t__ NG (int ) ;
 int NdisRegisterProtocolDriver (int *,TYPE_3__*,int **) ;
 int SL_BASIC_DEVICE_NAME ;
 int SL_BASIC_DEVICE_NAME_SYMBOLIC ;
 int SL_PROTOCOL_NAME ;
 TYPE_3__ SlDeviceCloseProc ;
 TYPE_3__ SlDeviceIoControlProc ;
 TYPE_3__ SlDeviceOpenProc ;
 TYPE_3__ SlDeviceReadProc ;
 TYPE_3__ SlDeviceWriteProc ;
 int SlFreeUnicode (TYPE_2__*) ;
 int SlNdisBindAdapterExProc ;
 int SlNdisCloseAdapterCompleteExProc ;
 int SlNdisNetPnPEventProc ;
 int SlNdisOidRequestCompleteProc ;
 int SlNdisOpenAdapterCompleteExProc ;
 int SlNdisReceiveNetBufferListsProc ;
 int SlNdisSendNetBufferListsCompleteProc ;
 int SlNdisStatusExProc ;
 int SlNdisUnbindAdapterExProc ;
 int SlNdisUninstallProc ;
 TYPE_9__* SlNewDevice (int ,int ) ;
 int SlNewList () ;
 TYPE_2__* SlNewUnicode (int ) ;
 int SlUnloadProc (TYPE_4__*) ;
 int SlZero (TYPE_3__*,int) ;
 TYPE_3__* sl ;

NDIS_STATUS DriverEntry(DRIVER_OBJECT *driver_object, UNICODE_STRING *registry_path)
{
 NDIS_PROTOCOL_DRIVER_CHARACTERISTICS t;
 NDIS_STATUS ret = NDIS_STATUS_FAILURE;
 SL_UNICODE *protocol_name = ((void*)0);
 NDIS_HANDLE protocol_handle = ((void*)0);
 SL_CTX *sl_ctx = ((void*)0);
 DEVICE_OBJECT *device_object = ((void*)0);

 SlZero(sl, sizeof(SL_CTX));


 protocol_name = SlNewUnicode(SL_PROTOCOL_NAME);
 if (protocol_name == ((void*)0))
 {
  goto LABEL_CLEANUP;
 }

 SlZero(&t, sizeof(t));
 t.Header.Type = NDIS_OBJECT_TYPE_PROTOCOL_DRIVER_CHARACTERISTICS;
 t.Header.Revision = NDIS_PROTOCOL_DRIVER_CHARACTERISTICS_REVISION_2;
 t.Header.Size = NDIS_SIZEOF_PROTOCOL_DRIVER_CHARACTERISTICS_REVISION_2;
 t.MajorNdisVersion = 6;
 t.MinorNdisVersion = 20;
 t.Name = protocol_name->String;

 t.BindAdapterHandlerEx = SlNdisBindAdapterExProc;
 t.UnbindAdapterHandlerEx = SlNdisUnbindAdapterExProc;
 t.OpenAdapterCompleteHandlerEx = SlNdisOpenAdapterCompleteExProc;
 t.CloseAdapterCompleteHandlerEx = SlNdisCloseAdapterCompleteExProc;
 t.NetPnPEventHandler = SlNdisNetPnPEventProc;
 t.UninstallHandler = SlNdisUninstallProc;
 t.OidRequestCompleteHandler = SlNdisOidRequestCompleteProc;
 t.StatusHandlerEx = SlNdisStatusExProc;
 t.ReceiveNetBufferListsHandler = SlNdisReceiveNetBufferListsProc;
 t.SendNetBufferListsCompleteHandler = SlNdisSendNetBufferListsCompleteProc;


 sl->DriverObject = driver_object;
 sl->AdapterList = SlNewList();

 ret = NdisRegisterProtocolDriver(((void*)0), &t, &protocol_handle);

 if (NG(ret))
 {
  protocol_handle = ((void*)0);
  goto LABEL_CLEANUP;
 }

 SlZero(driver_object->MajorFunction, sizeof(driver_object->MajorFunction));
 driver_object->MajorFunction[IRP_MJ_CREATE] = SlDeviceOpenProc;
 driver_object->MajorFunction[IRP_MJ_CLOSE] = SlDeviceCloseProc;
 driver_object->MajorFunction[IRP_MJ_READ] = SlDeviceReadProc;
 driver_object->MajorFunction[IRP_MJ_WRITE] = SlDeviceWriteProc;
 driver_object->MajorFunction[IRP_MJ_DEVICE_CONTROL] = SlDeviceIoControlProc;
 driver_object->DriverUnload = SlUnloadProc;


 sl->ProtocolHandle = protocol_handle;


 sl->BasicDevice = SlNewDevice(SL_BASIC_DEVICE_NAME, SL_BASIC_DEVICE_NAME_SYMBOLIC);
 if (sl->BasicDevice == ((void*)0))
 {
  ret = NDIS_STATUS_FAILURE;
  goto LABEL_CLEANUP;
 }
 sl->BasicDevice->IsBasicDevice = 1;

LABEL_CLEANUP:

 SlFreeUnicode(protocol_name);

 if (NG(ret))
 {
  SlUnloadProc(driver_object);
 }

 return ret;
}
