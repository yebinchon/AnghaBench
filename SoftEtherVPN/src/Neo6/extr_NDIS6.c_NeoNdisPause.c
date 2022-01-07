
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int Paused; scalar_t__ NumCurrentDispatch; } ;
typedef int PNDIS_MINIPORT_PAUSE_PARAMETERS ;
typedef int NDIS_STATUS ;
typedef int NDIS_HANDLE ;


 int NDIS_STATUS_SUCCESS ;
 int NdisMSleep (int) ;
 int NeoLockPacketQueue () ;
 int NeoUnlockPacketQueue () ;
 TYPE_1__* ctx ;

NDIS_STATUS NeoNdisPause(NDIS_HANDLE MiniportAdapterContext, PNDIS_MINIPORT_PAUSE_PARAMETERS MiniportPauseParameters)
{
 UINT counter_dbg = 0;

 ctx->Paused = 1;

 NeoLockPacketQueue();
 NeoUnlockPacketQueue();


 while (ctx->NumCurrentDispatch != 0)
 {
  NdisMSleep(10000);
  counter_dbg++;
  if (counter_dbg >= 1500)
  {
   break;
  }
 }

 return NDIS_STATUS_SUCCESS;
}
