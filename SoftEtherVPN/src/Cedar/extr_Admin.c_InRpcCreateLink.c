
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ServerCert; void* CheckServerCert; int Policy; void* ClientAuth; void* ClientOption; void* Online; int HubName; } ;
typedef TYPE_1__ RPC_CREATE_LINK ;
typedef int PACK ;
typedef int CLIENT_OPTION ;
typedef int CLIENT_AUTH ;
typedef int BUF ;


 int BufToX (int *,int) ;
 int FreeBuf (int *) ;
 int InRpcClientAuth (void*,int *) ;
 int InRpcClientOption (void*,int *) ;
 int InRpcPolicy (int *,int *) ;
 void* PackGetBool (int *,char*) ;
 int * PackGetBuf (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;
 void* ZeroMalloc (int) ;

void InRpcCreateLink(RPC_CREATE_LINK *t, PACK *p)
{
 BUF *b;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_CREATE_LINK));
 PackGetStr(p, "HubName_Ex", t->HubName, sizeof(t->HubName));
 t->Online = PackGetBool(p, "Online");
 t->ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
 InRpcClientOption(t->ClientOption, p);
 t->ClientAuth = ZeroMalloc(sizeof(CLIENT_AUTH));
 InRpcClientAuth(t->ClientAuth, p);
 InRpcPolicy(&t->Policy, p);

 t->CheckServerCert = PackGetBool(p, "CheckServerCert");
 b = PackGetBuf(p, "ServerCert");
 if (b != ((void*)0))
 {
  t->ServerCert = BufToX(b, 0);
  FreeBuf(b);
 }
}
