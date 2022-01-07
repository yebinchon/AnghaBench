
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int a ;
struct TYPE_7__ {int StartupAccount; int ServerCert; int RetryOnServerCert; int CheckServerCert; int ClientAuth; int ClientOption; } ;
struct TYPE_6__ {int StartupAccount; int ServerCert; int RetryOnServerCert; int CheckServerCert; int ClientAuth; int ClientOption; } ;
typedef TYPE_1__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef int FOLDER ;
typedef int BUF ;
typedef TYPE_2__ ACCOUNT ;


 int * CfgCreateFolder (int *,int ) ;
 int CfgDeleteFolder (int *) ;
 int * CfgFolderToBufEx (int *,int,int) ;
 int CiWriteAccountData (int *,TYPE_2__*) ;
 int TAG_ROOT ;
 int Zero (TYPE_2__*,int) ;

BUF *CiAccountToCfg(RPC_CLIENT_CREATE_ACCOUNT *t)
{
 BUF *b;
 FOLDER *root;
 ACCOUNT a;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 root = CfgCreateFolder(((void*)0), TAG_ROOT);
 Zero(&a, sizeof(a));
 a.ClientOption = t->ClientOption;
 a.ClientAuth = t->ClientAuth;
 a.CheckServerCert = t->CheckServerCert;
 a.RetryOnServerCert = t->RetryOnServerCert;
 a.ServerCert = t->ServerCert;
 a.StartupAccount = t->StartupAccount;

 CiWriteAccountData(root, &a);

 b = CfgFolderToBufEx(root, 1, 1);
 CfgDeleteFolder(root);

 return b;
}
