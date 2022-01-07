
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Opened; int * Event; } ;
typedef int IRP ;
typedef int IO_STACK_LOCATION ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int NeoClearPacketQueue () ;
 int NeoFreeEvent (int *) ;
 int NeoSetConnectState (scalar_t__) ;
 scalar_t__ TRUE ;
 TYPE_1__* ctx ;

BOOL NeoNdisOnClose(IRP *irp, IO_STACK_LOCATION *stack)
{
 if (ctx == ((void*)0))
 {
  return FALSE;
 }

 if (ctx->Opened == FALSE)
 {

  return FALSE;
 }
 ctx->Opened = FALSE;


 NeoFreeEvent(ctx->Event);
 ctx->Event = ((void*)0);


 NeoClearPacketQueue();

 NeoSetConnectState(FALSE);

 return TRUE;
}
