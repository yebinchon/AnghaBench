
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Status; } ;
typedef int NEO_CTX ;


 int NeoFreeStatus (int *) ;
 int NeoZero (TYPE_1__*,int) ;
 TYPE_1__* ctx ;

void NeoShutdown()
{
 if (ctx == ((void*)0))
 {

  return;
 }


 NeoFreeStatus(&ctx->Status);

 NeoZero(ctx, sizeof(NEO_CTX));
}
