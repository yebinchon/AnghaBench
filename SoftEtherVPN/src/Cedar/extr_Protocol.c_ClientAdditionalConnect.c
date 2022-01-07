
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int ServerMode; int ConnectingSocks; TYPE_3__* Session; int CurrentNumConnection; TYPE_2__* Tcp; scalar_t__ Halt; } ;
struct TYPE_15__ {scalar_t__ Direction; scalar_t__ DisconnectTick; } ;
struct TYPE_14__ {int SessionTimeOuted; int Cancel1; scalar_t__ HalfConnection; TYPE_1__* ClientOption; } ;
struct TYPE_13__ {int TcpSockList; } ;
struct TYPE_12__ {int ConnectionDisconnectSpan; } ;
typedef int THREAD ;
typedef TYPE_4__ TCPSOCK ;
typedef int SOCK ;
typedef int PACK ;
typedef TYPE_5__ CONNECTION ;


 int Add (int ,TYPE_4__*) ;
 int Cancel (int ) ;
 int * ClientAdditionalConnectToServer (TYPE_5__*) ;
 int ClientDownloadHello (TYPE_5__*,int *) ;
 int ClientUploadAuth2 (TYPE_5__*,int *) ;
 int ClientUploadSignature (int *) ;
 char* Count (int ) ;
 int Debug (char*,...) ;
 scalar_t__ Delete (int ,int *) ;
 int Disconnect (int *) ;
 scalar_t__ ERR_INVALID_PROTOCOL ;
 scalar_t__ ERR_SESSION_TIMEOUT ;
 int FreePack (int *) ;
 scalar_t__ GetErrorFromPack (int *) ;
 int * HttpClientRecv (int *) ;
 int LockList (int ) ;
 TYPE_4__* NewTcpSock (int *) ;
 scalar_t__ PackGetInt (int *,char*) ;
 int ReleaseSock (int *) ;
 scalar_t__ TCP_SERVER_TO_CLIENT ;
 scalar_t__ Tick64 () ;
 int UnlockList (int ) ;

bool ClientAdditionalConnect(CONNECTION *c, THREAD *t)
{
 SOCK *s;
 PACK *p;
 TCPSOCK *ts;
 UINT err;
 UINT direction;


 if (c == ((void*)0))
 {
  return 0;
 }


 s = ClientAdditionalConnectToServer(c);
 if (s == ((void*)0))
 {

  return 0;
 }

 if (c->Halt)
 {
  goto CLEANUP;
 }


 Debug("Uploading Signature...\n");
 if (ClientUploadSignature(s) == 0)
 {
  goto CLEANUP;
 }

 if (c->Halt)
 {

  goto CLEANUP;
 }


 Debug("Downloading Hello...\n");
 if (ClientDownloadHello(c, s) == 0)
 {
  goto CLEANUP;
 }

 if (c->Halt)
 {

  goto CLEANUP;
 }


 if (ClientUploadAuth2(c, s) == 0)
 {

  goto CLEANUP;
 }


 p = HttpClientRecv(s);
 if (p == ((void*)0))
 {

  goto CLEANUP;
 }

 err = GetErrorFromPack(p);
 direction = PackGetInt(p, "direction");

 FreePack(p);
 p = ((void*)0);

 if (err != 0)
 {

  Debug("Additional Connect Error: %u\n", err);
  if (err == ERR_SESSION_TIMEOUT || err == ERR_INVALID_PROTOCOL)
  {

   c->Session->SessionTimeOuted = 1;
  }
  goto CLEANUP;
 }

 Debug("Additional Connect Succeed!\n");



 ts = NewTcpSock(s);

 if (c->ServerMode == 0)
 {
  if (c->Session->ClientOption->ConnectionDisconnectSpan != 0)
  {
   ts->DisconnectTick = Tick64() + c->Session->ClientOption->ConnectionDisconnectSpan * (UINT64)1000;
  }
 }

 LockList(c->Tcp->TcpSockList);
 {
  ts->Direction = direction;
  Add(c->Tcp->TcpSockList, ts);
 }
 UnlockList(c->Tcp->TcpSockList);
 Debug("TCP Connection Incremented: %u\n", Count(c->CurrentNumConnection));

 if (c->Session->HalfConnection)
 {
  Debug("New Half Connection: %s\n",
   direction == TCP_SERVER_TO_CLIENT ? "TCP_SERVER_TO_CLIENT" : "TCP_CLIENT_TO_SERVER"
   );
 }


 Cancel(c->Session->Cancel1);


 LockList(c->ConnectingSocks);
 {
  if (Delete(c->ConnectingSocks, s))
  {
   ReleaseSock(s);
  }
 }
 UnlockList(c->ConnectingSocks);
 ReleaseSock(s);
 return 1;

CLEANUP:

 Disconnect(s);
 LockList(c->ConnectingSocks);
 {
  if (Delete(c->ConnectingSocks, s))
  {
   ReleaseSock(s);

  }
 }
 UnlockList(c->ConnectingSocks);
 ReleaseSock(s);
 return 0;
}
