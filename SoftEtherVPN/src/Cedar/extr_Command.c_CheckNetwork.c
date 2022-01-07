
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int c ;
typedef int UINT ;
struct TYPE_14__ {TYPE_1__* ListenSocket; } ;
struct TYPE_13__ {int LocalPort; } ;
typedef int THREAD ;
typedef int SOCK_EVENT ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ CHECK_NETWORK_1 ;


 int CheckNetworkListenThread ;
 TYPE_1__* Connect (char*,int) ;
 int Disconnect (TYPE_1__*) ;
 int Free (TYPE_1__**) ;
 int INFINITE ;
 int JoinSockToSockEvent (TYPE_1__*,int *) ;
 int * NewSockEvent () ;
 int * NewThread (int ,TYPE_2__*) ;
 int Print (char*,int) ;
 int Recv (TYPE_1__*,int*,int,int) ;
 int ReleaseSock (TYPE_1__*) ;
 int ReleaseSockEvent (int *) ;
 int ReleaseThread (int *) ;
 int SOCK_LATER ;
 int StartSSL (TYPE_1__*,int *,int *) ;
 int WaitSockEvent (int *,int ) ;
 int WaitThread (int *,int ) ;
 int WaitThreadInit (int *) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__** ZeroMalloc (int) ;

bool CheckNetwork()
{
 CHECK_NETWORK_1 c;
 THREAD *t;
 SOCK *listen_socket;
 UINT port;
 UINT i, num;
 bool ok = 1;
 SOCK **socks;
 SOCK_EVENT *se = NewSockEvent();

 Zero(&c, sizeof(c));
 t = NewThread(CheckNetworkListenThread, &c);
 WaitThreadInit(t);

 listen_socket = c.ListenSocket;

 port = listen_socket->LocalPort;

 num = 8;
 socks = ZeroMalloc(sizeof(SOCK *) * num);
 for (i = 0;i < num;i++)
 {
  socks[i] = Connect("localhost", port);
  if (socks[i] == ((void*)0))
  {
   Print("Connect Failed. (%u)\n", i);
   ok = 0;
   num = i;
   break;
  }
  if (StartSSL(socks[i], ((void*)0), ((void*)0)) == 0)
  {
   ReleaseSock(socks[i]);
   Print("Connect Failed. (%u)\n", i);
   ok = 0;
   num = i;
   break;
  }

  JoinSockToSockEvent(socks[i], se);
 }

 if (ok)
 {
  while (1)
  {
   UINT i;
   bool end = 0;
   bool all_blocked = 1;

   for (i = 0;i < num;i++)
   {
    UINT n;
    UINT ret;

    n = 0;
    ret = Recv(socks[i], &n, sizeof(UINT), 1);
    if (ret == 0)
    {
     Print("Recv Failed (Disconnected).\n", ret);
     end = 1;
     ok = 0;
    }
    if (ret != SOCK_LATER)
    {
     all_blocked = 0;
    }

    if (n >= 128)
    {
     end = 1;
    }
   }

   if (end)
   {
    break;
   }

   if (all_blocked)
   {
    WaitSockEvent(se, INFINITE);
   }
  }
 }

 for (i = 0;i < num;i++)
 {
  Disconnect(socks[i]);
  ReleaseSock(socks[i]);
 }
 Free(socks);

 Disconnect(listen_socket);

 WaitThread(t, INFINITE);
 ReleaseThread(t);

 ReleaseSock(listen_socket);

 ReleaseSockEvent(se);

 return ok;
}
