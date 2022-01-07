
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int OsInfo; } ;
typedef TYPE_1__ RPC_SERVER_INFO ;


 int FreeRpcOsInfo (int *) ;

void FreeRpcServerInfo(RPC_SERVER_INFO *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 FreeRpcOsInfo(&t->OsInfo);
}
