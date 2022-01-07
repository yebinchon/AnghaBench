
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ShortcutKey; int * ServerCert; int RetryOnServerCert; int CheckServerCert; int StartupAccount; int ClientAuth; int ClientOption; } ;
typedef TYPE_1__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef int PACK ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int OutRpcClientAuth (int *,int ) ;
 int OutRpcClientOption (int *,int ) ;
 int PackAddBuf (int *,char*,int *) ;
 int PackAddData (int *,char*,int ,int) ;
 int PackAddInt (int *,char*,int ) ;
 int * XToBuf (int *,int) ;

void OutRpcClientCreateAccount(PACK *p, RPC_CLIENT_CREATE_ACCOUNT *c)
{
 BUF *b;

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 OutRpcClientOption(p, c->ClientOption);
 OutRpcClientAuth(p, c->ClientAuth);

 PackAddInt(p, "StartupAccount", c->StartupAccount);
 PackAddInt(p, "CheckServerCert", c->CheckServerCert);
 PackAddInt(p, "RetryOnServerCert", c->RetryOnServerCert);
 if (c->ServerCert != ((void*)0))
 {
  b = XToBuf(c->ServerCert, 0);
  if (b != ((void*)0))
  {
   PackAddBuf(p, "ServerCert", b);
   FreeBuf(b);
  }
 }
 PackAddData(p, "ShortcutKey", c->ShortcutKey, sizeof(c->ShortcutKey));
}
