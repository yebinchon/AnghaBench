
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_10__ {int ShortcutKey; int ServerCert; void* LastConnectDateTime; void* UpdateDateTime; void* CreateDateTime; void* RetryOnServerCert; void* CheckServerCert; void* StartupAccount; int ClientAuth; int ClientOption; int lock; } ;
struct TYPE_9__ {scalar_t__ Size; int Buf; } ;
typedef int FOLDER ;
typedef TYPE_1__ BUF ;
typedef TYPE_2__ ACCOUNT ;


 int BufToX (TYPE_1__*,int) ;
 void* CfgGetBool (int *,char*) ;
 TYPE_1__* CfgGetBuf (int *,char*) ;
 int * CfgGetFolder (int *,char*) ;
 void* CfgGetInt64 (int *,char*) ;
 scalar_t__ CfgGetStr (int *,char*,char*,int) ;
 int CiLoadClientAuth (int *) ;
 int CiLoadClientOption (int *) ;
 int Copy (int ,int ,scalar_t__) ;
 int FreeBuf (TYPE_1__*) ;
 scalar_t__ IsZero (int ,scalar_t__) ;
 int NewLock () ;
 int Rand (int ,scalar_t__) ;
 scalar_t__ SHA1_SIZE ;
 TYPE_1__* StrToBin (char*) ;
 TYPE_2__* ZeroMalloc (int) ;

ACCOUNT *CiLoadClientAccount(FOLDER *f)
{
 ACCOUNT *a;
 FOLDER *client_option_folder, *client_auth_folder;
 BUF *b;
 char tmp[64];

 if (f == ((void*)0))
 {
  return ((void*)0);
 }

 client_option_folder = CfgGetFolder(f, "ClientOption");

 if (client_option_folder != ((void*)0))
 {

 }

 client_auth_folder = CfgGetFolder(f, "ClientAuth");

 if (client_option_folder == ((void*)0) || client_auth_folder == ((void*)0))
 {
  return ((void*)0);
 }

 a = ZeroMalloc(sizeof(ACCOUNT));
 a->lock = NewLock();

 a->ClientOption = CiLoadClientOption(client_option_folder);
 a->ClientAuth = CiLoadClientAuth(client_auth_folder);

 a->StartupAccount = CfgGetBool(f, "StartupAccount");
 a->CheckServerCert = CfgGetBool(f, "CheckServerCert");
 a->RetryOnServerCert = CfgGetBool(f, "RetryOnServerCert");
 a->CreateDateTime = CfgGetInt64(f, "CreateDateTime");
 a->UpdateDateTime = CfgGetInt64(f, "UpdateDateTime");
 a->LastConnectDateTime = CfgGetInt64(f, "LastConnectDateTime");

 b = CfgGetBuf(f, "ServerCert");
 if (b != ((void*)0))
 {
  a->ServerCert = BufToX(b, 0);
  FreeBuf(b);
 }

 if (CfgGetStr(f, "ShortcutKey", tmp, sizeof(tmp)))
 {
  BUF *b = StrToBin(tmp);
  if (b->Size == SHA1_SIZE)
  {
   Copy(a->ShortcutKey, b->Buf, SHA1_SIZE);
  }
  FreeBuf(b);
 }

 if (IsZero(a->ShortcutKey, SHA1_SIZE))
 {
  Rand(a->ShortcutKey, SHA1_SIZE);
 }

 return a;
}
