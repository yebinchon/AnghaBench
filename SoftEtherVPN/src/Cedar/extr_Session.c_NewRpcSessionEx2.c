
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_18__ {int Build; int Version; } ;
struct TYPE_17__ {int UseCompress; int UseEncrypt; int MaxConnection; } ;
struct TYPE_16__ {int Err; void* hWndForUI; } ;
struct TYPE_15__ {int ServerMode; TYPE_2__* Connection; int UseCompress; int UseEncrypt; int MaxConnection; int ClientOption; int Cancel1; void* TrafficLock; int HaltEvent; int Traffic; int LastCommTime; int CreatedTime; int Name; TYPE_4__* Cedar; int ref; void* lock; int LoggingRecordCount; } ;
typedef int SOCK ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ CONNECTION ;
typedef TYPE_3__ CLIENT_OPTION ;
typedef TYPE_4__ CEDAR ;


 int * ClientConnectToServer (TYPE_2__*) ;
 int ClientDownloadHello (TYPE_2__*,int *) ;
 int ClientUploadSignature (int *) ;
 int Copy (int ,TYPE_3__*,int) ;
 int CopyStr (char*) ;
 int Malloc (int) ;
 int NewCancel () ;
 TYPE_2__* NewClientConnectionEx (TYPE_1__*,char*,int ,int ) ;
 int NewCounter () ;
 int NewEvent () ;
 void* NewLock () ;
 int NewRef () ;
 int NewTraffic () ;
 int ReleaseSession (TYPE_1__*) ;
 int Tick64 () ;
 TYPE_1__* ZeroMalloc (int) ;

SESSION *NewRpcSessionEx2(CEDAR *cedar, CLIENT_OPTION *option, UINT *err, char *client_str, void *hWnd)
{
 SESSION *s;
 CONNECTION *c;
 SOCK *sock;

 if (cedar == ((void*)0) || option == ((void*)0))
 {
  return ((void*)0);
 }

 s = ZeroMalloc(sizeof(SESSION));

 s->LoggingRecordCount = NewCounter();
 s->lock = NewLock();
 s->ref = NewRef();
 s->Cedar = cedar;
 s->ServerMode = 0;
 s->Name = CopyStr("CLIENT_RPC_SESSION");
 s->CreatedTime = s->LastCommTime = Tick64();
 s->Traffic = NewTraffic();
 s->HaltEvent = NewEvent();
 s->TrafficLock = NewLock();
 s->Cancel1 = NewCancel();


 s->ClientOption = Malloc(sizeof(CLIENT_OPTION));
 Copy(s->ClientOption, option, sizeof(CLIENT_OPTION));

 s->MaxConnection = option->MaxConnection;
 s->UseEncrypt = option->UseEncrypt;
 s->UseCompress = option->UseCompress;


 c = s->Connection = NewClientConnectionEx(s, client_str, cedar->Version, cedar->Build);
 c->hWndForUI = hWnd;


 sock = ClientConnectToServer(c);
 if (sock == ((void*)0))
 {

  if (err != ((void*)0))
  {
   *err = c->Err;
  }
  ReleaseSession(s);
  return ((void*)0);
 }


 if (ClientUploadSignature(sock) == 0)
 {

  if (err != ((void*)0))
  {
   *err = c->Err;
  }
  ReleaseSession(s);
  return ((void*)0);
 }


 if (ClientDownloadHello(c, sock) == 0)
 {

  if (err != ((void*)0))
  {
   *err = c->Err;
  }
  ReleaseSession(s);
  return ((void*)0);
 }

 return s;
}
