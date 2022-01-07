
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int Server; int ServerStr; int Build; int Version; int ref; } ;
struct TYPE_13__ {int ServerMode; int IsInProc; void* SendBlocks2; void* SendBlocks; void* ReceivedBlocks; int ServerX; int ServerStr; int ServerBuild; int ServerVer; int CurrentNumConnection; TYPE_2__* Thread; int Name; int Status; TYPE_1__* Tcp; int ClientHostname; int ClientIp; TYPE_3__* FirstSock; int Type; int Protocol; TYPE_5__* Cedar; int ref; int lock; int ConnectedTick; } ;
struct TYPE_12__ {scalar_t__ Type; int * RemoteX; int RemoteHostname; int RemoteIP; int ref; } ;
struct TYPE_11__ {int ref; } ;
struct TYPE_10__ {int TcpSockList; } ;
typedef TYPE_2__ THREAD ;
typedef int TCP ;
typedef TYPE_3__ SOCK ;
typedef int IP ;
typedef TYPE_4__ CONNECTION ;
typedef TYPE_5__ CEDAR ;


 int AddRef (int ) ;
 int CONNECTION_STATUS_ACCEPTED ;
 int CONNECTION_TCP ;
 int CONNECTION_TYPE_INIT ;
 int CloneX (int *) ;
 int Copy (int *,int *,int) ;
 int CopyStr (char*) ;
 int GetServerProductName (int ,int ,int) ;
 int Inc (int ) ;
 int NewCounter () ;
 int NewList (int *) ;
 int NewLock () ;
 void* NewQueue () ;
 int NewRef () ;
 scalar_t__ SOCK_INPROC ;
 int StrCpy (int ,int,int ) ;
 int Tick64 () ;
 void* ZeroMalloc (int) ;

CONNECTION *NewServerConnection(CEDAR *cedar, SOCK *s, THREAD *t)
{
 CONNECTION *c;

 if (cedar == ((void*)0))
 {
  return ((void*)0);
 }

 c = ZeroMalloc(sizeof(CONNECTION));
 c->ConnectedTick = Tick64();
 c->lock = NewLock();
 c->ref = NewRef();
 c->Cedar = cedar;
 AddRef(c->Cedar->ref);
 c->Protocol = CONNECTION_TCP;
 c->Type = CONNECTION_TYPE_INIT;
 c->FirstSock = s;
 if (s != ((void*)0))
 {
  AddRef(c->FirstSock->ref);
  Copy(&c->ClientIp, &s->RemoteIP, sizeof(IP));
  StrCpy(c->ClientHostname, sizeof(c->ClientHostname), s->RemoteHostname);
 }
 c->Tcp = ZeroMalloc(sizeof(TCP));
 c->Tcp->TcpSockList = NewList(((void*)0));
 c->ServerMode = 1;
 c->Status = CONNECTION_STATUS_ACCEPTED;
 c->Name = CopyStr("INITING");
 c->Thread = t;
 AddRef(t->ref);
 c->CurrentNumConnection = NewCounter();
 Inc(c->CurrentNumConnection);

 c->ServerVer = cedar->Version;
 c->ServerBuild = cedar->Build;
 StrCpy(c->ServerStr, sizeof(c->ServerStr), cedar->ServerStr);
 GetServerProductName(cedar->Server, c->ServerStr, sizeof(c->ServerStr));

 if (s != ((void*)0) && s->RemoteX != ((void*)0))
 {
  c->ServerX = CloneX(s->RemoteX);
 }

 if (s != ((void*)0) && s->Type == SOCK_INPROC)
 {

  c->IsInProc = 1;
 }


 c->ReceivedBlocks = NewQueue();
 c->SendBlocks = NewQueue();
 c->SendBlocks2 = NewQueue();

 return c;
}
