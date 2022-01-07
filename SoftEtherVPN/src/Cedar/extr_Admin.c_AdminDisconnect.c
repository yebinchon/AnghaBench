
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * Sock; scalar_t__ Param; } ;
typedef int SOCK ;
typedef int SESSION ;
typedef TYPE_1__ RPC ;


 int Disconnect (int *) ;
 int EndRpc (TYPE_1__*) ;
 int ReleaseSession (int *) ;

void AdminDisconnect(RPC *rpc)
{
 SESSION *s;
 SOCK *sock;

 if (rpc == ((void*)0))
 {
  return;
 }

 s = (SESSION *)rpc->Param;
 sock = rpc->Sock;

 EndRpc(rpc);

 Disconnect(sock);
 ReleaseSession(s);
}
