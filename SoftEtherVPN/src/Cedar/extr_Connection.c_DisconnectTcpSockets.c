
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {scalar_t__ Protocol; TYPE_3__* Tcp; } ;
struct TYPE_11__ {int TcpSockList; } ;
struct TYPE_10__ {TYPE_1__* Sock; } ;
struct TYPE_9__ {int SendSize; } ;
typedef TYPE_2__ TCPSOCK ;
typedef TYPE_3__ TCP ;
typedef TYPE_4__ CONNECTION ;


 scalar_t__ CONNECTION_TCP ;
 int Debug (char*,...) ;
 int DeleteAll (int ) ;
 int Free (TYPE_2__**) ;
 int FreeTcpSock (TYPE_2__*) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 TYPE_2__** ToArray (int ) ;
 int UnlockList (int ) ;

void DisconnectTcpSockets(CONNECTION *c)
{
 UINT i, num;
 TCP *tcp;
 TCPSOCK **tcpsocks;

 if (c == ((void*)0))
 {
  return;
 }
 if (c->Protocol != CONNECTION_TCP)
 {
  return;
 }

 tcp = c->Tcp;
 LockList(tcp->TcpSockList);
 {
  tcpsocks = ToArray(tcp->TcpSockList);
  num = LIST_NUM(tcp->TcpSockList);
  DeleteAll(tcp->TcpSockList);
 }
 UnlockList(tcp->TcpSockList);

 if (num != 0)
 {
  Debug("--- SOCKET STATUS ---\n");
  for (i = 0;i < num;i++)
  {
   TCPSOCK *ts = tcpsocks[i];
   Debug(" SOCK %2u: %u\n", i, ts->Sock->SendSize);
   FreeTcpSock(ts);
  }
 }

 Free(tcpsocks);
}
