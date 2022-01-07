
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hostname ;
typedef int UINT ;
struct TYPE_9__ {int TcpMakeConnectionFailed; int TcpMakeConnectionSucceed; int * Sock; int NatTcpCancelFlag; TYPE_1__* v; int DestPort; int DestIp; } ;
struct TYPE_8__ {int ref; } ;
struct TYPE_7__ {TYPE_2__* SockEvent; } ;
typedef int THREAD ;
typedef TYPE_2__ SOCK_EVENT ;
typedef int SOCK ;
typedef TYPE_3__ NAT_ENTRY ;
typedef int IP ;


 int AddRef (int ) ;
 int * ConnectEx3 (char*,int ,int ,int *,int *,int *,int,int) ;
 int Debug (char*,char*,int ) ;
 int IPToStr (char*,int,int *) ;
 int JoinSockToSockEvent (int *,TYPE_2__*) ;
 int MAX_SIZE ;
 int NoticeThreadInit (int *) ;
 int ReleaseSockEvent (TYPE_2__*) ;
 int SetSockEvent (TYPE_2__*) ;
 int UINTToIP (int *,int ) ;

void NatTcpConnectThread(THREAD *t, void *p)
{
 NAT_ENTRY *n = (NAT_ENTRY *)p;
 IP ip;
 char hostname[MAX_SIZE];
 UINT port_number;
 SOCK *sock;
 SOCK_EVENT *e;

 if (n == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 UINTToIP(&ip, n->DestIp);
 IPToStr(hostname, sizeof(hostname), &ip);
 port_number = n->DestPort;
 e = n->v->SockEvent;
 AddRef(e->ref);


 NoticeThreadInit(t);


 Debug("NatTcpConnect Connecting to %s:%u\n", hostname, port_number);
 sock = ConnectEx3(hostname, port_number, 0, &n->NatTcpCancelFlag, ((void*)0), ((void*)0), 0, 1);
 if (sock == ((void*)0))
 {

  n->TcpMakeConnectionFailed = 1;
 }
 else
 {

  n->TcpMakeConnectionSucceed = 1;
 }
 n->Sock = sock;
 JoinSockToSockEvent(sock, e);
 SetSockEvent(e);

 ReleaseSockEvent(e);
}
