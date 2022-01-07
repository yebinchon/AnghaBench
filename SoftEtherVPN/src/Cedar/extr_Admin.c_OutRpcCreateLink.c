
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ServerCert; int CheckServerCert; int Policy; int ClientAuth; int ClientOption; int Online; int HubName; } ;
typedef TYPE_1__ RPC_CREATE_LINK ;
typedef int PACK ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int OutRpcClientAuth (int *,int ) ;
 int OutRpcClientOption (int *,int ) ;
 int OutRpcPolicy (int *,int *) ;
 int PackAddBool (int *,char*,int ) ;
 int PackAddBuf (int *,char*,int *) ;
 int PackAddStr (int *,char*,int ) ;
 int * XToBuf (int *,int) ;

void OutRpcCreateLink(PACK *p, RPC_CREATE_LINK *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName_Ex",t->HubName);
 PackAddBool(p, "Online", t->Online);
 OutRpcClientOption(p, t->ClientOption);
 OutRpcClientAuth(p, t->ClientAuth);
 OutRpcPolicy(p, &t->Policy);

 PackAddBool(p, "CheckServerCert", t->CheckServerCert);
 if (t->ServerCert != ((void*)0))
 {
  BUF *b;
  b = XToBuf(t->ServerCert, 0);
  PackAddBuf(p, "ServerCert", b);
  FreeBuf(b);
 }
}
