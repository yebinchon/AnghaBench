
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {scalar_t__ Type; int ListenMode; int CancelAccept; int Disconnecting; int InProcAcceptEvent; int InProcAcceptQueue; } ;
typedef TYPE_1__ SOCK ;
typedef int IP ;


 int InsertQueue (int ,TYPE_1__*) ;
 int LockQueue (int ) ;
 int NewSocketPair (TYPE_1__**,TYPE_1__**,int *,int ,int *,int ) ;
 int ReleaseSock (TYPE_1__*) ;
 scalar_t__ SOCK_INPROC ;
 int Set (int ) ;
 int UnlockQueue (int ) ;

SOCK *ConnectInProc(SOCK *listen_sock, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port)
{
 SOCK *ss, *sc;
 bool ok = 0;

 if (listen_sock == ((void*)0) || listen_sock->Type != SOCK_INPROC || listen_sock->ListenMode == 0)
 {
  return ((void*)0);
 }

 NewSocketPair(&sc, &ss, client_ip, client_port, server_ip, server_port);

 LockQueue(listen_sock->InProcAcceptQueue);
 {
  if (listen_sock->CancelAccept == 0 && listen_sock->Disconnecting == 0)
  {
   InsertQueue(listen_sock->InProcAcceptQueue, ss);

   ok = 1;
  }
 }
 UnlockQueue(listen_sock->InProcAcceptQueue);

 if (ok == 0)
 {
  ReleaseSock(ss);
  ReleaseSock(sc);
  return ((void*)0);
 }

 Set(listen_sock->InProcAcceptEvent);

 return sc;
}
