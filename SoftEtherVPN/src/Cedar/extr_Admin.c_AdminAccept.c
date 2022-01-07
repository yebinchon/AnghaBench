
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int hubname ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_27__ {int ServerAdmin; char* HubName; int * LogFileList; TYPE_4__* Rpc; int ClientWinVer; int ClientBuild; TYPE_3__* Server; } ;
struct TYPE_26__ {TYPE_3__* Server; } ;
struct TYPE_25__ {int Name; TYPE_6__* Cedar; int ClientBuild; int Random; TYPE_2__* FirstSock; } ;
struct TYPE_24__ {char* Name; } ;
struct TYPE_23__ {scalar_t__ ServerType; } ;
struct TYPE_21__ {int* addr; } ;
struct TYPE_22__ {TYPE_1__ RemoteIP; } ;
typedef TYPE_2__ SOCK ;
typedef TYPE_3__ SERVER ;
typedef int RPC_WINVER ;
typedef TYPE_4__ RPC ;
typedef int PACK ;
typedef TYPE_5__ CONNECTION ;
typedef TYPE_6__ CEDAR ;
typedef TYPE_7__ ADMIN ;


 scalar_t__ AdminCheckPassword (TYPE_6__*,int ,int *,char*,int,int*) ;
 int AdminDispatch ;
 int CheckAdminSourceAddress (TYPE_2__*,char*) ;
 scalar_t__ Cmp (int *,int *,int) ;
 int Copy (int *,int *,int) ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_IP_ADDRESS_DENIED ;
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_NULL_PASSWORD_LOCAL_ONLY ;
 scalar_t__ ERR_PROTOCOL_ERROR ;
 int Free (TYPE_7__*) ;
 int FreeEnumLogFile (int *) ;
 int FreePack (int *) ;
 int GetUniErrorStr (scalar_t__) ;
 int HashAdminPassword (int *,char*) ;
 int HttpServerSend (TYPE_2__*,int *) ;
 int INFINITE ;
 int InRpcWinVer (int *,int *) ;
 int MAX_HUBNAME_LEN ;
 int * NewPack () ;
 int PackAddBool (int *,char*,int) ;
 int PackGetBool (int *,char*) ;
 int PackGetData (int *,char*,int *) ;
 int PackGetDataSize (int *,char*) ;
 int PackGetStr (int *,char*,char*,int) ;
 int RpcFree (TYPE_4__*) ;
 int RpcServer (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SHA1_SIZE ;
 int SLog (TYPE_6__*,char*,int ,...) ;
 int SecurePassword (int *,int *,int ) ;
 int SetTimeout (TYPE_2__*,int ) ;
 TYPE_4__* StartRpcServer (TYPE_2__*,int ,TYPE_7__*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ StrLen (char*) ;
 TYPE_7__* ZeroMalloc (int) ;

UINT AdminAccept(CONNECTION *c, PACK *p)
{
 ADMIN *a;
 UCHAR secure_password[SHA1_SIZE];
 UCHAR null_password[SHA1_SIZE];
 UCHAR secure_null_password[SHA1_SIZE];
 char hubname[MAX_HUBNAME_LEN + 1];
 CEDAR *cedar;
 SOCK *sock;
 RPC *rpc;
 UINT err;
 SERVER *server = ((void*)0);
 RPC_WINVER ver;
 bool accept_empty_password;
 bool is_empty_password = 0;

 if (c == ((void*)0) || p == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 cedar = c->Cedar;
 sock = c->FirstSock;

 if (cedar != ((void*)0))
 {
  server = cedar->Server;
 }

 accept_empty_password = PackGetBool(p, "accept_empty_password");


 InRpcWinVer(&ver, p);


 if (PackGetStr(p, "hubname", hubname, sizeof(hubname)) == 0)
 {

  StrCpy(hubname, sizeof(hubname), "");
 }


 if (CheckAdminSourceAddress(sock, hubname) == 0)
 {
  SLog(c->Cedar, "LA_IP_DENIED", c->Name);
  return ERR_IP_ADDRESS_DENIED;
 }


 if (PackGetDataSize(p, "secure_password") != SHA1_SIZE)
 {

  return ERR_PROTOCOL_ERROR;
 }
 PackGetData(p, "secure_password", secure_password);

 if (StrLen(hubname) == 0)
 {

  SLog(c->Cedar, "LA_CONNECTED_1", c->Name);
 }
 else
 {

  if (server != ((void*)0) && server->ServerType == SERVER_TYPE_FARM_MEMBER)
  {

   return ERR_NOT_ENOUGH_RIGHT;
  }
  SLog(c->Cedar, "LA_CONNECTED_2", c->Name, hubname);
 }


 err = AdminCheckPassword(cedar, c->Random, secure_password,
  StrLen(hubname) != 0 ? hubname : ((void*)0), accept_empty_password, &is_empty_password);

 if (err != ERR_NO_ERROR)
 {

  SLog(c->Cedar, "LA_ERROR", c->Name, GetUniErrorStr(err), err);
  return err;
 }

 SLog(c->Cedar, "LA_OK", c->Name);

 HashAdminPassword(null_password, "");
 SecurePassword(secure_null_password, null_password, c->Random);

 if (Cmp(secure_null_password, secure_password, SHA1_SIZE) == 0)
 {
  if (sock->RemoteIP.addr[0] != 127)
  {

   if (StrLen(hubname) != 0)
   {
    return ERR_NULL_PASSWORD_LOCAL_ONLY;
   }
  }
 }



 p = NewPack();
 if (accept_empty_password && is_empty_password)
 {
  PackAddBool(p, "empty_password", 1);
 }
 HttpServerSend(sock, p);
 FreePack(p);


 a = ZeroMalloc(sizeof(ADMIN));
 a->ServerAdmin = ((StrLen(hubname) == 0) ? 1 : 0);
 a->HubName = (StrLen(hubname) != 0 ? hubname : ((void*)0));
 a->Server = c->Cedar->Server;
 a->ClientBuild = c->ClientBuild;

 Copy(&a->ClientWinVer, &ver, sizeof(RPC_WINVER));


 SetTimeout(sock, INFINITE);


 rpc = StartRpcServer(sock, AdminDispatch, a);

 a->Rpc = rpc;

 SLog(c->Cedar, "LA_RPC_START", c->Name, rpc->Name);

 RpcServer(rpc);
 RpcFree(rpc);

 if (a->LogFileList != ((void*)0))
 {

  FreeEnumLogFile(a->LogFileList);
 }


 Free(a);

 return ERR_NO_ERROR;
}
