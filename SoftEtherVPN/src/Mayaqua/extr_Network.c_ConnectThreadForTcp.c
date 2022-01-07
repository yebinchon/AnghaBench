
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int hostname ;
struct TYPE_10__ {int Delay; int* CancelFlag; int Tcp_InNegotiation; int Ok; int Finished; int FinishEvent; int FinishedTick; TYPE_1__* Result_Tcp_Sock; int CancelLock; TYPE_1__* CancelDisconnectSock; int Hostname; scalar_t__ Tcp_TryStartSsl; int Timeout; int Port; int Ip; } ;
struct TYPE_9__ {int ref; } ;
typedef int THREAD ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ CONNECT_TCP_RUDP_PARAM ;


 int AddRef (int ) ;
 TYPE_1__* ConnectEx3 (char*,int ,int ,int*,int *,int *,int,int) ;
 int Debug (char*) ;
 int DetectIsServerSoftEtherVPN (TYPE_1__*) ;
 int Disconnect (TYPE_1__*) ;
 int INFINITE ;
 int IPToStr (char*,int,int *) ;
 int Lock (int ) ;
 int MAX_SIZE ;
 int ReleaseSock (TYPE_1__*) ;
 int Set (int ) ;
 int SetTimeout (TYPE_1__*,int) ;
 int StartSSLEx (TYPE_1__*,int *,int *,int ,int ) ;
 int Tick64 () ;
 int Unlock (int ) ;
 int WaitEx (int *,int,int*) ;

void ConnectThreadForTcp(THREAD *thread, void *param)
{
 SOCK *sock;
 char hostname[MAX_SIZE];
 CONNECT_TCP_RUDP_PARAM *p = (CONNECT_TCP_RUDP_PARAM *)param;
 if (thread == ((void*)0) || p == ((void*)0))
 {
  return;
 }


 if (p->Delay >= 1)
 {
  WaitEx(((void*)0), p->Delay, p->CancelFlag);
 }


 IPToStr(hostname, sizeof(hostname), &p->Ip);
 sock = ConnectEx3(hostname, p->Port, p->Timeout, p->CancelFlag, ((void*)0), ((void*)0), 0, 1);

 if (sock != ((void*)0) && p->Tcp_TryStartSsl)
 {
  bool ssl_ret = 0;

  p->Tcp_InNegotiation = 1;


  Lock(p->CancelLock);
  {
   if ((*p->CancelFlag) == 0)
   {
    p->CancelDisconnectSock = sock;
    AddRef(sock->ref);
   }
   else
   {
    Debug("User Cancel to StartSSL.\n");
    goto LABEL_CANCEL;
   }
  }
  Unlock(p->CancelLock);


  ssl_ret = StartSSLEx(sock, ((void*)0), ((void*)0), 0, p->Hostname);

  if (ssl_ret)
  {

   SetTimeout(sock, (10 * 1000));
   ssl_ret = DetectIsServerSoftEtherVPN(sock);
   SetTimeout(sock, INFINITE);

   if (ssl_ret == 0)
   {
    Debug("DetectIsServerSoftEtherVPN Error.\n");
   }
  }

  Lock(p->CancelLock);
  {
   ReleaseSock(p->CancelDisconnectSock);
   p->CancelDisconnectSock = ((void*)0);
  }
LABEL_CANCEL:
  Unlock(p->CancelLock);

  if (ssl_ret == 0)
  {

   Disconnect(sock);
   ReleaseSock(sock);

   Debug("Fail to StartSSL.\n");

   sock = ((void*)0);
  }
 }

 p->Result_Tcp_Sock = sock;
 p->Ok = (p->Result_Tcp_Sock == ((void*)0) ? 0 : 1);
 p->FinishedTick = Tick64();
 p->Finished = 1;
 p->Tcp_InNegotiation = 0;

 Set(p->FinishEvent);
}
