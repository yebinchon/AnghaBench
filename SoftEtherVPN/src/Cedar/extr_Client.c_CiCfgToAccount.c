
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ServerCert; int RetryOnServerCert; int CheckServerCert; int StartupAccount; int ClientAuth; int ClientOption; int lock; } ;
struct TYPE_7__ {int ServerCert; int RetryOnServerCert; int CheckServerCert; int StartupAccount; int ClientAuth; int ClientOption; } ;
typedef TYPE_1__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef int FOLDER ;
typedef int BUF ;
typedef TYPE_2__ ACCOUNT ;


 int * CfgBufTextToFolder (int *) ;
 int CfgDeleteFolder (int *) ;
 TYPE_2__* CiLoadClientAccount (int *) ;
 int DeleteLock (int ) ;
 int Free (TYPE_2__*) ;
 TYPE_1__* ZeroMalloc (int) ;

RPC_CLIENT_CREATE_ACCOUNT *CiCfgToAccount(BUF *b)
{
 RPC_CLIENT_CREATE_ACCOUNT *t;
 FOLDER *f;
 ACCOUNT *a;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 f = CfgBufTextToFolder(b);
 if (f == ((void*)0))
 {
  return ((void*)0);
 }

 a = CiLoadClientAccount(f);

 CfgDeleteFolder(f);

 if (a == ((void*)0))
 {
  return ((void*)0);
 }

 DeleteLock(a->lock);

 t = ZeroMalloc(sizeof(RPC_CLIENT_CREATE_ACCOUNT));
 t->ClientOption = a->ClientOption;
 t->ClientAuth = a->ClientAuth;
 t->StartupAccount = a->StartupAccount;
 t->CheckServerCert = a->CheckServerCert;
 t->RetryOnServerCert = a->RetryOnServerCert;
 t->ServerCert = a->ServerCert;
 Free(a);

 return t;
}
