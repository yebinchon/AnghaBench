
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Halting; scalar_t__ ConnectedOld; scalar_t__ ConnectedForce; scalar_t__ Connected; scalar_t__ Inited; scalar_t__ Initing; } ;
typedef int NDIS_STATUS ;
typedef int NDIS_HANDLE ;


 scalar_t__ FALSE ;
 int NDIS_STATUS_FAILURE ;
 int NDIS_STATUS_SUCCESS ;
 int NeoFreeControlDevice () ;
 int NeoFreePacketArray () ;
 int NeoShutdown () ;
 int NeoStopAdapter () ;
 scalar_t__ TRUE ;
 TYPE_1__* ctx ;

NDIS_STATUS NeoNdisHalt(NDIS_HANDLE MiniportAdapterContext)
{
 if (ctx == ((void*)0))
 {
  return NDIS_STATUS_FAILURE;
 }

 if (ctx->Halting != FALSE)
 {

  return NDIS_STATUS_SUCCESS;
 }
 ctx->Halting = TRUE;


 NeoStopAdapter();


 NeoFreePacketArray();


 NeoFreeControlDevice();


 ctx->Initing = ctx->Inited = FALSE;
 ctx->Connected = ctx->ConnectedForce = ctx->ConnectedOld = FALSE;
 ctx->Halting = FALSE;


 NeoShutdown();

 return NDIS_STATUS_SUCCESS;
}
