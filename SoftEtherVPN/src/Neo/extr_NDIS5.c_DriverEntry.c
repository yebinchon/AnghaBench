
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_6__ {int NdisWrapper; } ;
struct TYPE_5__ {int * SendHandler; int SendPacketsHandler; int SetInformationHandler; int ResetHandler; int QueryInformationHandler; int HaltHandler; int InitializeHandler; int MinorNdisVersion; int MajorNdisVersion; } ;
typedef int NDIS_STATUS ;
typedef TYPE_1__ NDIS_MINIPORT_CHARACTERISTICS ;
typedef int DRIVER_OBJECT ;


 scalar_t__ FALSE ;
 int NEO_NDIS_MAJOR_VERSION ;
 int NEO_NDIS_MINOR_VERSION ;
 scalar_t__ NG (int ) ;
 int NdisMInitializeWrapper (int *,int *,int *,int *) ;
 int NdisMRegisterMiniport (int ,TYPE_1__*,int) ;
 scalar_t__ NeoInit () ;
 int NeoNdisHalt ;
 int NeoNdisInit ;
 int NeoNdisQuery ;
 int NeoNdisReset ;
 int NeoNdisSendPackets ;
 int NeoNdisSet ;
 int NeoZero (TYPE_1__*,int) ;
 int PsGetVersion (int*,int*,int *,int *) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 TYPE_2__* ctx ;
 int g_is_win8 ;
 int ndis_wrapper_handle ;

NDIS_STATUS DriverEntry(DRIVER_OBJECT *DriverObject, UNICODE_STRING *RegistryPath)
{
 NDIS_MINIPORT_CHARACTERISTICS miniport;
 ULONG os_major_ver = 0, os_minor_ver = 0;


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



 NdisMInitializeWrapper(&ctx->NdisWrapper, DriverObject, RegistryPath, ((void*)0));
 ndis_wrapper_handle = ctx->NdisWrapper;


 NeoZero(&miniport, sizeof(NDIS_MINIPORT_CHARACTERISTICS));
 miniport.MajorNdisVersion = NEO_NDIS_MAJOR_VERSION;
 miniport.MinorNdisVersion = NEO_NDIS_MINOR_VERSION;


 miniport.InitializeHandler = NeoNdisInit;
 miniport.HaltHandler = NeoNdisHalt;
 miniport.QueryInformationHandler = NeoNdisQuery;
 miniport.ResetHandler = NeoNdisReset;
 miniport.SetInformationHandler = NeoNdisSet;


 miniport.SendPacketsHandler = NeoNdisSendPackets;




 if (NG(NdisMRegisterMiniport(ctx->NdisWrapper, &miniport, sizeof(NDIS_MINIPORT_CHARACTERISTICS))))
 {

  return STATUS_UNSUCCESSFUL;
 }


 return STATUS_SUCCESS;
}
