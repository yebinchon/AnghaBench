
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RpcThread; } ;
typedef TYPE_1__ CLIENT ;


 int CiRpcServerThread ;
 int NewThread (int ,void*) ;
 int WaitThreadInit (int ) ;

void CiStartRpcServer(CLIENT *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 c->RpcThread = NewThread(CiRpcServerThread, (void *)c);
 WaitThreadInit(c->RpcThread);
}
