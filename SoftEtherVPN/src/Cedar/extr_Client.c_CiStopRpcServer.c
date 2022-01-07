
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RpcThread; int RpcListener; } ;
typedef TYPE_1__ CLIENT ;


 int Disconnect (int ) ;
 int INFINITE ;
 int ReleaseSock (int ) ;
 int ReleaseThread (int ) ;
 int WaitThread (int ,int ) ;

void CiStopRpcServer(CLIENT *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 Disconnect(c->RpcListener);
 ReleaseSock(c->RpcListener);

 WaitThread(c->RpcThread, INFINITE);
 ReleaseThread(c->RpcThread);
}
