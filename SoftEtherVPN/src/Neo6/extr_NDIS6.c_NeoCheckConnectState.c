
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int t ;
typedef int state ;
struct TYPE_9__ {scalar_t__ ConnectedOld; scalar_t__ Connected; int ConnectedForce; scalar_t__ Halting; int * NdisMiniport; } ;
struct TYPE_7__ {int Size; int Revision; int Type; } ;
struct TYPE_8__ {int StatusBufferSize; void* MediaConnectState; struct TYPE_8__* StatusBuffer; int StatusCode; int PauseFunctions; int RcvLinkSpeed; int XmitLinkSpeed; int MediaDuplexState; TYPE_1__ Header; int * SourceHandle; } ;
typedef TYPE_2__ NDIS_STATUS_INDICATION ;
typedef TYPE_2__ NDIS_LINK_STATE ;


 scalar_t__ FALSE ;
 void* MediaConnectStateConnected ;
 void* MediaConnectStateDisconnected ;
 int NDIS_LINK_STATE_REVISION_1 ;
 int NDIS_OBJECT_TYPE_DEFAULT ;
 int NDIS_OBJECT_TYPE_STATUS_INDICATION ;
 int NDIS_SIZEOF_LINK_STATE_REVISION_1 ;
 int NDIS_SIZEOF_STATUS_INDICATION_REVISION_1 ;
 int NDIS_STATUS_INDICATION_REVISION_1 ;
 int NDIS_STATUS_LINK_STATE ;
 int NdisMIndicateStatusEx (int *,TYPE_2__*) ;
 int NdisPauseFunctionsSendAndReceive ;
 int NdisPauseFunctionsUnsupported ;
 int NeoZero (TYPE_2__*,int) ;
 TYPE_4__* ctx ;
 int keep_link ;
 int max_speed ;

void NeoCheckConnectState()
{
 NDIS_STATUS_INDICATION t;
 NDIS_LINK_STATE state;
 if (ctx == ((void*)0) || ctx->NdisMiniport == ((void*)0))
 {
  return;
 }

 NeoZero(&t, sizeof(t));
 t.Header.Type = NDIS_OBJECT_TYPE_STATUS_INDICATION;
 t.Header.Revision = NDIS_STATUS_INDICATION_REVISION_1;
 t.Header.Size = NDIS_SIZEOF_STATUS_INDICATION_REVISION_1;

 t.SourceHandle = ctx->NdisMiniport;

 NeoZero(&state, sizeof(state));
 state.Header.Type = NDIS_OBJECT_TYPE_DEFAULT;
 state.Header.Revision = NDIS_LINK_STATE_REVISION_1;
 state.Header.Size = NDIS_SIZEOF_LINK_STATE_REVISION_1;

 state.MediaDuplexState = NdisPauseFunctionsSendAndReceive;
 state.XmitLinkSpeed = state.RcvLinkSpeed = max_speed;
 state.PauseFunctions = NdisPauseFunctionsUnsupported;

 t.StatusCode = NDIS_STATUS_LINK_STATE;
 t.StatusBuffer = &state;
 t.StatusBufferSize = sizeof(NDIS_LINK_STATE);

 if (keep_link == 0)
 {
  if (ctx->ConnectedOld != ctx->Connected || ctx->ConnectedForce)
  {
   ctx->ConnectedForce = FALSE;
   ctx->ConnectedOld = ctx->Connected;
   if (ctx->Halting == FALSE)
   {
    state.MediaConnectState = ctx->Connected ? MediaConnectStateConnected : MediaConnectStateDisconnected;
    NdisMIndicateStatusEx(ctx->NdisMiniport, &t);
   }
  }
 }
 else
 {
  if (ctx->ConnectedForce)
  {
   ctx->ConnectedForce = 0;

   if (ctx->Halting == FALSE)
   {
    state.MediaConnectState = MediaConnectStateConnected;
    NdisMIndicateStatusEx(ctx->NdisMiniport, &t);
   }
  }
 }
}
