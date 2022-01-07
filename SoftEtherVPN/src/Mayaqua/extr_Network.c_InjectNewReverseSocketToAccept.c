
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int CancelAccept; int Disconnecting; int ServerMode; int IsReverseAcceptedSocket; int ReverseAcceptEvent; int ReverseAcceptQueue; int RemotePort; int RemoteIP; } ;
typedef TYPE_1__ SOCK ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int Disconnect (TYPE_1__*) ;
 int InsertQueue (int ,TYPE_1__*) ;
 int LockQueue (int ) ;
 int ReleaseSock (TYPE_1__*) ;
 int Set (int ) ;
 int UnlockQueue (int ) ;

void InjectNewReverseSocketToAccept(SOCK *listen_sock, SOCK *s, IP *client_ip, UINT client_port)
{
 bool ok = 0;

 if (listen_sock == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 LockQueue(listen_sock->ReverseAcceptQueue);
 {
  if (listen_sock->CancelAccept == 0 && listen_sock->Disconnecting == 0)
  {
   InsertQueue(listen_sock->ReverseAcceptQueue, s);

   ok = 1;

   s->ServerMode = 1;
   s->IsReverseAcceptedSocket = 1;

   Copy(&s->RemoteIP, client_ip, sizeof(IP));
   s->RemotePort = client_port;
  }
 }
 UnlockQueue(listen_sock->ReverseAcceptQueue);

 if (ok == 0)
 {
  Disconnect(s);
  ReleaseSock(s);
 }
 else
 {
  Set(listen_sock->ReverseAcceptEvent);
 }
}
