
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Opened; int NdisControl; int * Event; } ;


 scalar_t__ FALSE ;
 int NdisDeregisterDeviceEx (int ) ;
 int NeoFreeEvent (int *) ;
 int NeoSet (int *) ;
 TYPE_1__* ctx ;

void NeoFreeControlDevice()
{
 if (ctx == ((void*)0))
 {
  return;
 }

 if (ctx->Opened != FALSE)
 {

  NeoSet(ctx->Event);
  NeoFreeEvent(ctx->Event);
  ctx->Event = ((void*)0);
  ctx->Opened = FALSE;
 }


 NdisDeregisterDeviceEx(ctx->NdisControl);
}
