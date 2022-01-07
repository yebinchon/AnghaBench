
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Cert; } ;
typedef TYPE_1__ RPC_HUB_GET_CA ;


 int FreeX (int ) ;

void FreeRpcHubGetCa(RPC_HUB_GET_CA *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 FreeX(t->Cert);
}
