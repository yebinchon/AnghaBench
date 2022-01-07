
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_7__ {int Connected; int ServerMode; void* RemotePort; int RemoteIP; void* LocalPort; int LocalIP; } ;
typedef int TUBE ;
typedef int SOCK_EVENT ;
typedef TYPE_1__ SOCK ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int INFINITE ;
 TYPE_1__* NewInProcSocket (int *,int *) ;
 int * NewSockEvent () ;
 int NewTubePair (int **,int **,int ) ;
 int QuerySocketInformation (TYPE_1__*) ;
 int ReleaseSockEvent (int *) ;
 int ReleaseTube (int *) ;
 int SetIP (int *,int,int ,int ,int) ;
 int SetTimeout (TYPE_1__*,int ) ;
 int SetTubeSockEvent (int *,int *) ;

void NewSocketPair(SOCK **client, SOCK **server, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port)
{
 IP iptmp;
 TUBE *t1, *t2;
 SOCK *sc, *ss;
 SOCK_EVENT *e1, *e2;

 if (client == ((void*)0) || server == ((void*)0))
 {
  return;
 }

 SetIP(&iptmp, 127, 0, 0, 1);
 if (client_ip == ((void*)0))
 {
  client_ip = &iptmp;
 }
 if (server_ip == ((void*)0))
 {
  server_ip = &iptmp;
 }


 NewTubePair(&t1, &t2, 0);


 e1 = NewSockEvent();
 e2 = NewSockEvent();

 SetTubeSockEvent(t1, e1);
 SetTubeSockEvent(t2, e2);

 sc = NewInProcSocket(t1, t2);
 ss = NewInProcSocket(t2, t1);

 Copy(&sc->LocalIP, client_ip, sizeof(IP));
 sc->LocalPort = client_port;
 Copy(&sc->RemoteIP, server_ip, sizeof(IP));
 sc->RemotePort = server_port;

 Copy(&ss->LocalIP, server_ip, sizeof(IP));
 ss->LocalPort = server_port;
 Copy(&ss->RemoteIP, client_ip, sizeof(IP));
 ss->RemotePort = client_port;

 sc->Connected = 1;
 sc->ServerMode = 0;

 ss->Connected = 1;
 ss->ServerMode = 1;

 SetTimeout(sc, INFINITE);
 SetTimeout(ss, INFINITE);

 QuerySocketInformation(sc);
 QuerySocketInformation(ss);

 ReleaseSockEvent(e1);
 ReleaseSockEvent(e2);

 ReleaseTube(t1);
 ReleaseTube(t2);

 *client = sc;
 *server = ss;
}
