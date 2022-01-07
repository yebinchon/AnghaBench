
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int NdisMiniport; } ;
typedef int NDIS_STATUS ;
typedef int NDIS_HANDLE ;
typedef int BOOLEAN ;


 int FALSE ;
 int NDIS_STATUS_SUCCESS ;
 int NdisMResetComplete (int ,int ,int ) ;
 TYPE_1__* ctx ;

NDIS_STATUS NeoNdisReset(BOOLEAN *AddressingReset, NDIS_HANDLE MiniportAdapterContext)
{
 NdisMResetComplete(ctx->NdisMiniport, NDIS_STATUS_SUCCESS, FALSE);
 return NDIS_STATUS_SUCCESS;
}
