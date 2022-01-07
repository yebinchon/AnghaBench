
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ConnectedOld; scalar_t__ Connected; int ConnectedForce; scalar_t__ Halting; int * NdisMiniport; } ;


 scalar_t__ FALSE ;
 int NDIS_STATUS_MEDIA_CONNECT ;
 int NDIS_STATUS_MEDIA_DISCONNECT ;
 int NdisMIndicateStatus (int *,int ,int ,int ) ;
 int NdisMIndicateStatusComplete (int *) ;
 TYPE_1__* ctx ;
 int keep_link ;

void NeoCheckConnectState()
{
 if (ctx == ((void*)0) || ctx->NdisMiniport == ((void*)0))
 {
  return;
 }

 if (keep_link == 0)
 {
  if (ctx->ConnectedOld != ctx->Connected || ctx->ConnectedForce)
  {
   ctx->ConnectedForce = FALSE;
   ctx->ConnectedOld = ctx->Connected;
   if (ctx->Halting == FALSE)
   {
    NdisMIndicateStatus(ctx->NdisMiniport,
     ctx->Connected ? NDIS_STATUS_MEDIA_CONNECT : NDIS_STATUS_MEDIA_DISCONNECT,
     0, 0);
    NdisMIndicateStatusComplete(ctx->NdisMiniport);
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
    NdisMIndicateStatus(ctx->NdisMiniport,
     NDIS_STATUS_MEDIA_CONNECT,
     0, 0);
    NdisMIndicateStatusComplete(ctx->NdisMiniport);
   }
  }
 }
}
