
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {scalar_t__ Initing; scalar_t__ Inited; int CurrentPacketFilter; struct TYPE_4__* NdisContext; void* NdisMiniport; scalar_t__ ConnectedForce; scalar_t__ ConnectedOld; scalar_t__ Connected; scalar_t__ Halting; int HardwareStatus; void* NdisConfig; int * NdisWrapper; } ;
typedef int NDIS_STATUS ;
typedef scalar_t__ NDIS_MEDIUM ;
typedef void* NDIS_HANDLE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int NDIS_ATTRIBUTE_DESERIALIZE ;
 int NDIS_ATTRIBUTE_IGNORE_PACKET_TIMEOUT ;
 int NDIS_ATTRIBUTE_IGNORE_REQUEST_TIMEOUT ;
 int NDIS_ATTRIBUTE_NO_HALT_ON_SUSPEND ;
 int NDIS_PACKET_TYPE_ALL_FUNCTIONAL ;
 int NDIS_PACKET_TYPE_ALL_LOCAL ;
 int NDIS_PACKET_TYPE_BROADCAST ;
 int NDIS_PACKET_TYPE_DIRECTED ;
 int NDIS_STATUS_FAILURE ;
 int NDIS_STATUS_SUCCESS ;
 scalar_t__ NEO_MEDIA ;
 int NdisHardwareStatusReady ;
 int NdisInterfaceInternal ;
 int NdisMSetAttributes (void*,TYPE_1__*,scalar_t__,int ) ;
 int NdisMSetAttributesEx (void*,TYPE_1__*,int,int,int ) ;
 int NeoInitControlDevice () ;
 int NeoInitPacketArray () ;
 scalar_t__ NeoLoadRegistry () ;
 int NeoSetConnectState (scalar_t__) ;
 int NeoStartAdapter () ;
 scalar_t__ TRUE ;
 TYPE_1__* ctx ;
 int g_is_win8 ;
 int keep_link ;
 int * ndis_wrapper_handle ;

NDIS_STATUS NeoNdisInit(NDIS_STATUS *OpenErrorStatus,
     UINT *SelectedMediumIndex,
     NDIS_MEDIUM *MediumArray,
     UINT MediumArraySize,
     NDIS_HANDLE MiniportAdapterHandle,
     NDIS_HANDLE WrapperConfigurationContext)
{
 BOOL media_check;
 UINT i;

 if (ctx == ((void*)0))
 {
  return NDIS_STATUS_FAILURE;
 }

 if (ctx->NdisWrapper == ((void*)0))
 {
  ctx->NdisWrapper = ndis_wrapper_handle;
 }


 if (ctx->Initing != FALSE)
 {

  return NDIS_STATUS_FAILURE;
 }
 ctx->Initing = TRUE;


 if (ctx->Inited != FALSE)
 {



  return NDIS_STATUS_FAILURE;
 }


 ctx->CurrentPacketFilter = NDIS_PACKET_TYPE_ALL_LOCAL | NDIS_PACKET_TYPE_BROADCAST | NDIS_PACKET_TYPE_DIRECTED | NDIS_PACKET_TYPE_ALL_FUNCTIONAL;


 media_check = FALSE;
 for (i = 0;i < MediumArraySize;i++)
 {
  if (MediumArray[i] == NEO_MEDIA)
  {
   media_check = TRUE;
   break;
  }
 }
 if (media_check == FALSE)
 {

  ctx->Initing = FALSE;
  return NDIS_STATUS_FAILURE;
 }


 *SelectedMediumIndex = i;


 ctx->NdisMiniport = MiniportAdapterHandle;
 ctx->NdisConfig = WrapperConfigurationContext;
 ctx->NdisContext = ctx;
 ctx->HardwareStatus = NdisHardwareStatusReady;
 ctx->Halting = FALSE;
 ctx->Connected = ctx->ConnectedOld = FALSE;

 if (keep_link == 0)
 {
  ctx->ConnectedForce = TRUE;
 }


 if (NeoLoadRegistry() == FALSE)
 {

  ctx->Initing = FALSE;
  return NDIS_STATUS_FAILURE;
 }



 if (g_is_win8 == 0)
 {
  NdisMSetAttributes(ctx->NdisMiniport, ctx->NdisContext, FALSE, NdisInterfaceInternal);
 }
 else
 {
  NdisMSetAttributesEx(ctx->NdisMiniport, ctx->NdisContext, 16,
   NDIS_ATTRIBUTE_DESERIALIZE | NDIS_ATTRIBUTE_IGNORE_PACKET_TIMEOUT | NDIS_ATTRIBUTE_IGNORE_REQUEST_TIMEOUT | NDIS_ATTRIBUTE_NO_HALT_ON_SUSPEND,
   NdisInterfaceInternal);
 }


 NeoInitPacketArray();


 NeoInitControlDevice();


 NeoStartAdapter();


 ctx->Initing = FALSE;
 ctx->Inited = TRUE;


 NeoSetConnectState(FALSE);

 return NDIS_STATUS_SUCCESS;
}
