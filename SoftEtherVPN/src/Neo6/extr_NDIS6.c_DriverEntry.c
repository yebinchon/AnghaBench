
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_5__ {int Size; int Revision; int Type; } ;
struct TYPE_6__ {int CancelOidRequestHandler; int ShutdownHandlerEx; int DevicePnPEventNotifyHandler; int CancelSendHandler; int ReturnNetBufferListsHandler; int RestartHandler; int PauseHandler; int SetOptionsHandler; int SendNetBufferListsHandler; int UnloadHandler; int CheckForHangHandlerEx; int ResetHandlerEx; int OidRequestHandler; int HaltHandlerEx; int InitializeHandlerEx; int MinorNdisVersion; int MajorNdisVersion; TYPE_1__ Header; } ;
typedef int NDIS_STATUS ;
typedef TYPE_2__ NDIS_MINIPORT_DRIVER_CHARACTERISTICS ;
typedef int DRIVER_OBJECT ;


 scalar_t__ FALSE ;
 int NDIS_MINIPORT_DRIVER_CHARACTERISTICS_REVISION_2 ;
 int NDIS_OBJECT_TYPE_MINIPORT_DRIVER_CHARACTERISTICS ;
 int NDIS_SIZEOF_MINIPORT_DRIVER_CHARACTERISTICS_REVISION_2 ;
 int NEO_NDIS_MAJOR_VERSION ;
 int NEO_NDIS_MINOR_VERSION ;
 scalar_t__ NG (int ) ;
 int NdisMRegisterMiniportDriver (int *,int *,int *,TYPE_2__*,int *) ;
 scalar_t__ NeoInit () ;
 int NeoNdisCancelOidRequest ;
 int NeoNdisCancelSend ;
 int NeoNdisCheckForHangEx ;
 int NeoNdisDevicePnPEventNotify ;
 int NeoNdisDriverUnload ;
 int NeoNdisHaltEx ;
 int NeoNdisInitEx ;
 int NeoNdisOidRequest ;
 int NeoNdisPause ;
 int NeoNdisResetEx ;
 int NeoNdisRestart ;
 int NeoNdisReturnNetBufferLists ;
 int NeoNdisSendNetBufferLists ;
 int NeoNdisSetOptions ;
 int NeoNdisShutdownEx ;
 int NeoZero (TYPE_2__*,int) ;
 int PsGetVersion (int*,int*,int *,int *) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int g_is_win8 ;
 int ndis_miniport_driver_handle ;

NDIS_STATUS DriverEntry(DRIVER_OBJECT *DriverObject, UNICODE_STRING *RegistryPath)
{
 NDIS_MINIPORT_DRIVER_CHARACTERISTICS miniport;
 ULONG os_major_ver = 0, os_minor_ver = 0;
 NDIS_STATUS ret;


 if (NeoInit() == FALSE)
 {

  return STATUS_UNSUCCESSFUL;
 }

 g_is_win8 = 0;


 PsGetVersion(&os_major_ver, &os_minor_ver, ((void*)0), ((void*)0));

 if (os_major_ver >= 7 || (os_major_ver == 6 && os_minor_ver >= 2))
 {

  g_is_win8 = 1;
 }


 NeoZero(&miniport, sizeof(NDIS_MINIPORT_DRIVER_CHARACTERISTICS));

 miniport.Header.Type = NDIS_OBJECT_TYPE_MINIPORT_DRIVER_CHARACTERISTICS;
 miniport.Header.Revision = NDIS_MINIPORT_DRIVER_CHARACTERISTICS_REVISION_2;
 miniport.Header.Size = NDIS_SIZEOF_MINIPORT_DRIVER_CHARACTERISTICS_REVISION_2;

 miniport.MajorNdisVersion = NEO_NDIS_MAJOR_VERSION;
 miniport.MinorNdisVersion = NEO_NDIS_MINOR_VERSION;


 miniport.InitializeHandlerEx = NeoNdisInitEx;
 miniport.HaltHandlerEx = NeoNdisHaltEx;
 miniport.OidRequestHandler = NeoNdisOidRequest;
 miniport.ResetHandlerEx = NeoNdisResetEx;
 miniport.CheckForHangHandlerEx = NeoNdisCheckForHangEx;
 miniport.UnloadHandler = NeoNdisDriverUnload;
 miniport.SendNetBufferListsHandler = NeoNdisSendNetBufferLists;

 miniport.SetOptionsHandler = NeoNdisSetOptions;
 miniport.PauseHandler = NeoNdisPause;
 miniport.RestartHandler = NeoNdisRestart;
 miniport.ReturnNetBufferListsHandler = NeoNdisReturnNetBufferLists;
 miniport.CancelSendHandler = NeoNdisCancelSend;
 miniport.DevicePnPEventNotifyHandler = NeoNdisDevicePnPEventNotify;
 miniport.ShutdownHandlerEx = NeoNdisShutdownEx;
 miniport.CancelOidRequestHandler = NeoNdisCancelOidRequest;

 ret = NdisMRegisterMiniportDriver(DriverObject, RegistryPath,
  ((void*)0), &miniport, &ndis_miniport_driver_handle);

 if (NG(ret))
 {

  return STATUS_UNSUCCESSFUL;
 }


 return STATUS_SUCCESS;
}
