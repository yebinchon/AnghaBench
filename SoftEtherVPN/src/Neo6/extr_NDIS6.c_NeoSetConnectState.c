
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Connected; } ;
typedef int BOOL ;


 int NeoCheckConnectState () ;
 TYPE_1__* ctx ;

void NeoSetConnectState(BOOL connected)
{
 if (ctx == ((void*)0))
 {
  return;
 }
 ctx->Connected = connected;
 NeoCheckConnectState();
}
