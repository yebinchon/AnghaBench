
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Paused; } ;
typedef int PNDIS_MINIPORT_RESTART_PARAMETERS ;
typedef int NDIS_STATUS ;
typedef int NDIS_HANDLE ;


 int NDIS_STATUS_SUCCESS ;
 TYPE_1__* ctx ;

NDIS_STATUS NeoNdisRestart(NDIS_HANDLE MiniportAdapterContext, PNDIS_MINIPORT_RESTART_PARAMETERS MiniportRestartParameters)
{
 ctx->Paused = 0;

 return NDIS_STATUS_SUCCESS;
}
