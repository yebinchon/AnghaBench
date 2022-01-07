
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int StartupAccount; int CheckServerCert; int RetryOnServerCert; int ShortcutKey; void* LastConnectDateTime; void* UpdateDateTime; void* CreateDateTime; void* ClientAuth; void* ClientOption; int ServerCert; int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_GET_ACCOUNT ;
typedef int PACK ;
typedef int CLIENT_OPTION ;
typedef int CLIENT_AUTH ;
typedef int BUF ;


 int BufToX (int *,int) ;
 int FreeBuf (int *) ;
 int InRpcClientAuth (void*,int *) ;
 int InRpcClientOption (void*,int *) ;
 int * PackGetBuf (int *,char*) ;
 int PackGetData2 (int *,char*,int ,int ) ;
 scalar_t__ PackGetInt (int *,char*) ;
 void* PackGetInt64 (int *,char*) ;
 int PackGetUniStr (int *,char*,int ,int) ;
 int SHA1_SIZE ;
 int Zero (TYPE_1__*,int) ;
 void* ZeroMalloc (int) ;

void InRpcClientGetAccount(RPC_CLIENT_GET_ACCOUNT *c, PACK *p)
{
 BUF *b;

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(c, sizeof(RPC_CLIENT_GET_ACCOUNT));

 c->ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
 c->ClientAuth = ZeroMalloc(sizeof(CLIENT_AUTH));

 PackGetUniStr(p, "AccountName", c->AccountName, sizeof(c->AccountName));
 c->StartupAccount = PackGetInt(p, "StartupAccount") ? 1 : 0;
 c->CheckServerCert = PackGetInt(p, "CheckServerCert") ? 1 : 0;
 c->RetryOnServerCert = PackGetInt(p, "RetryOnServerCert") ? 1 : 0;
 b = PackGetBuf(p, "ServerCert");
 if (b != ((void*)0))
 {
  c->ServerCert = BufToX(b, 0);
  FreeBuf(b);
 }

 InRpcClientOption(c->ClientOption, p);
 InRpcClientAuth(c->ClientAuth, p);

 c->CreateDateTime = PackGetInt64(p, "CreateDateTime");
 c->UpdateDateTime = PackGetInt64(p, "UpdateDateTime");
 c->LastConnectDateTime = PackGetInt64(p, "LastConnectDateTime");

 PackGetData2(p, "ShortcutKey", c->ShortcutKey, SHA1_SIZE);
}
