
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Opened; int * Event; } ;
typedef int NEO_EVENT ;
typedef int IRP ;
typedef int IO_STACK_LOCATION ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int NeoClearPacketQueue (int) ;
 int NeoFreeEvent (int *) ;
 int NeoLockPacketQueue () ;
 int NeoSetConnectState (scalar_t__) ;
 int NeoUnlockPacketQueue () ;
 scalar_t__ TRUE ;
 TYPE_1__* ctx ;

BOOL NeoNdisOnClose(IRP *irp, IO_STACK_LOCATION *stack)
{
 NEO_EVENT *free_event = ((void*)0);
 if (ctx == ((void*)0))
 {
  return FALSE;
 }

 if (ctx->Opened == FALSE)
 {

  return FALSE;
 }
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
  NeoFreeEvent(free_event);
 }

 NeoSetConnectState(FALSE);

 return TRUE;
}
