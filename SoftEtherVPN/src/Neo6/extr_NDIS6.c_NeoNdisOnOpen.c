
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* Opened; int * Event; int HardwareID; } ;
typedef int IRP ;
typedef int IO_STACK_LOCATION ;
typedef void* BOOL ;


 void* FALSE ;
 int MAX_SIZE ;
 char* NDIS_NEO_EVENT_NAME ;
 int * NeoNewEvent (char*) ;
 int NeoSetConnectState (void*) ;
 void* TRUE ;
 TYPE_1__* ctx ;
 int sprintf (char*,char*,int ) ;

BOOL NeoNdisOnOpen(IRP *irp, IO_STACK_LOCATION *stack)
{
 char name[MAX_SIZE];

 if (ctx == ((void*)0))
 {
  return FALSE;
 }

 if (ctx->Opened)
 {

  return FALSE;
 }
 ctx->Opened = TRUE;


 sprintf(name, NDIS_NEO_EVENT_NAME, ctx->HardwareID);


 ctx->Event = NeoNewEvent(name);
 if (ctx->Event == ((void*)0))
 {
  ctx->Opened = FALSE;
  return FALSE;
 }


 NeoSetConnectState(TRUE);

 return TRUE;
}
