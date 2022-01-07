
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Status; } ;
typedef TYPE_1__ RPC_SESSION_STATUS ;


 int CiFreeClientGetConnectionStatus (int *) ;

void FreeRpcSessionStatus(RPC_SESSION_STATUS *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 CiFreeClientGetConnectionStatus(&t->Status);
}
