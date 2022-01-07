
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_12__ {int ServerMode; void* SendBlocks2; void* SendBlocks; void* ReceivedBlocks; int ServerPort; int ServerName; int ClientStr; void* ClientBuild; void* ClientVer; TYPE_4__* Session; void* ConnectingSocks; void* ConnectingThreads; int CurrentNumConnection; void* LastCounterResetTick; int Name; int Status; TYPE_1__* Tcp; int Protocol; TYPE_2__* Cedar; int ref; int lock; void* ConnectedTick; } ;
struct TYPE_11__ {int VirtualHost; int LinkModeClient; TYPE_3__* ClientOption; TYPE_2__* Cedar; } ;
struct TYPE_10__ {char* Hostname; int Port; } ;
struct TYPE_9__ {void* Build; void* Version; int ref; } ;
struct TYPE_8__ {void* TcpSockList; } ;
typedef int TCP ;
typedef TYPE_4__ SESSION ;
typedef TYPE_5__ CONNECTION ;


 int AddRef (int ) ;
 char* CEDAR_CLIENT_STR ;
 char* CEDAR_ROUTER_STR ;
 char* CEDAR_SERVER_LINK_STR ;
 int CONNECTION_STATUS_CONNECTING ;
 int CONNECTION_TCP ;
 int CopyStr (char*) ;
 int Inc (int ) ;
 int NewCounter () ;
 void* NewList (int *) ;
 int NewLock () ;
 void* NewQueue () ;
 int NewRef () ;
 int StrCpy (int ,int,char*) ;
 void* Tick64 () ;
 void* ZeroMalloc (int) ;

CONNECTION *NewClientConnectionEx(SESSION *s, char *client_str, UINT client_ver, UINT client_build)
{
 CONNECTION *c;


 c = ZeroMalloc(sizeof(CONNECTION));
 c->ConnectedTick = Tick64();
 c->lock = NewLock();
 c->ref = NewRef();
 c->Cedar = s->Cedar;
 AddRef(c->Cedar->ref);
 c->Protocol = CONNECTION_TCP;
 c->Tcp = ZeroMalloc(sizeof(TCP));
 c->Tcp->TcpSockList = NewList(((void*)0));
 c->ServerMode = 0;
 c->Status = CONNECTION_STATUS_CONNECTING;
 c->Name = CopyStr("CLIENT_CONNECTION");
 c->Session = s;
 c->CurrentNumConnection = NewCounter();
 c->LastCounterResetTick = Tick64();
 Inc(c->CurrentNumConnection);

 c->ConnectingThreads = NewList(((void*)0));
 c->ConnectingSocks = NewList(((void*)0));

 if (client_str == ((void*)0))
 {
  c->ClientVer = s->Cedar->Version;
  c->ClientBuild = s->Cedar->Build;

  if (c->Session->VirtualHost == 0)
  {
   if (c->Session->LinkModeClient == 0)
   {
    StrCpy(c->ClientStr, sizeof(c->ClientStr), CEDAR_CLIENT_STR);
   }
   else
   {
    StrCpy(c->ClientStr, sizeof(c->ClientStr), CEDAR_SERVER_LINK_STR);
   }
  }
  else
  {
   StrCpy(c->ClientStr, sizeof(c->ClientStr), CEDAR_ROUTER_STR);
  }
 }
 else
 {
  c->ClientVer = client_ver;
  c->ClientBuild = client_build;
  StrCpy(c->ClientStr, sizeof(c->ClientStr), client_str);
 }


 StrCpy(c->ServerName, sizeof(c->ServerName), s->ClientOption->Hostname);
 c->ServerPort = s->ClientOption->Port;


 c->ReceivedBlocks = NewQueue();
 c->SendBlocks = NewQueue();
 c->SendBlocks2 = NewQueue();

 return c;
}
