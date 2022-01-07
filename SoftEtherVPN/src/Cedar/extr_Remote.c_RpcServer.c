
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * Sock; } ;
typedef int SOCK ;
typedef TYPE_1__ RPC ;


 int RpcRecvNextCall (TYPE_1__*) ;

void RpcServer(RPC *r)
{
 SOCK *s;

 if (r == ((void*)0))
 {
  return;
 }

 s = r->Sock;

 while (1)
 {

  if (RpcRecvNextCall(r) == 0)
  {

   break;
  }
 }
}
