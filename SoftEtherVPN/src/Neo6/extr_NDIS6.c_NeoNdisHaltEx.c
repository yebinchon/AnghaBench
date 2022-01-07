
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {scalar_t__ Halting; scalar_t__ NumCurrentDispatch; scalar_t__ ConnectedOld; scalar_t__ ConnectedForce; scalar_t__ Connected; scalar_t__ Inited; scalar_t__ Initing; int * Event; scalar_t__ Opened; } ;
typedef int NEO_EVENT ;
typedef int NDIS_HANDLE ;
typedef int NDIS_HALT_ACTION ;


 scalar_t__ FALSE ;
 int NdisMSleep (int) ;
 int NeoClearPacketQueue (int) ;
 int NeoFreeControlDevice () ;
 int NeoFreeEvent (int *) ;
 int NeoFreePacketArray () ;
 int NeoLockPacketQueue () ;
 int NeoSet (int *) ;
 int NeoShutdown () ;
 int NeoStopAdapter () ;
 int NeoUnlockPacketQueue () ;
 scalar_t__ TRUE ;
 TYPE_1__* ctx ;

void NeoNdisHaltEx(NDIS_HANDLE MiniportAdapterContext, NDIS_HALT_ACTION HaltAction)
{
 NEO_EVENT *free_event = ((void*)0);
 UINT counter_dbg = 0;
 if (ctx == ((void*)0))
 {
  return;
 }

 if (ctx->Halting != FALSE)
 {

  return;
 }
 ctx->Halting = TRUE;

 ctx->Opened = FALSE;

 NeoLockPacketQueue();
 {

  free_event = ctx->Event;
  ctx->Event = ((void*)0);


  NeoClearPacketQueue(1);
 }
 NeoUnlockPacketQueue();

 if (free_event != ((void*)0))
 {
  NeoSet(free_event);
 }


 while (ctx->NumCurrentDispatch != 0)
 {
  NdisMSleep(10000);
  counter_dbg++;
  if (counter_dbg >= 1500)
  {
   break;
  }
 }

 if (free_event != ((void*)0))
 {
  NeoFreeEvent(free_event);
 }


 NeoFreeControlDevice();


 NeoStopAdapter();


 NeoFreePacketArray();


 ctx->Initing = ctx->Inited = FALSE;
 ctx->Connected = ctx->ConnectedForce = ctx->ConnectedOld = FALSE;
 ctx->Halting = FALSE;


 NeoShutdown();
}
