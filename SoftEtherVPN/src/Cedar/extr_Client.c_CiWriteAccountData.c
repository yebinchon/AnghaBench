
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_3__ {int ShortcutKey; int * ServerCert; int LastConnectDateTime; int UpdateDateTime; int CreateDateTime; int RetryOnServerCert; int CheckServerCert; int StartupAccount; int ClientAuth; int ClientOption; } ;
typedef int FOLDER ;
typedef int BUF ;
typedef TYPE_1__ ACCOUNT ;


 int BinToStr (char*,int,int ,int ) ;
 int CfgAddBool (int *,char*,int ) ;
 int CfgAddBuf (int *,char*,int *) ;
 int CfgAddInt64 (int *,char*,int ) ;
 int CfgAddStr (int *,char*,char*) ;
 int CfgCreateFolder (int *,char*) ;
 int CiWriteClientAuth (int ,int ) ;
 int CiWriteClientOption (int ,int ) ;
 int FreeBuf (int *) ;
 int IsZero (int ,int ) ;
 int SHA1_SIZE ;
 int * XToBuf (int *,int) ;

void CiWriteAccountData(FOLDER *f, ACCOUNT *a)
{

 if (f == ((void*)0) || a == ((void*)0))
 {
  return;
 }


 CiWriteClientOption(CfgCreateFolder(f, "ClientOption"), a->ClientOption);


 CiWriteClientAuth(CfgCreateFolder(f, "ClientAuth"), a->ClientAuth);


 CfgAddBool(f, "StartupAccount", a->StartupAccount);


 CfgAddBool(f, "CheckServerCert", a->CheckServerCert);


 CfgAddBool(f, "RetryOnServerCert", a->RetryOnServerCert);


 CfgAddInt64(f, "CreateDateTime", a->CreateDateTime);
 CfgAddInt64(f, "UpdateDateTime", a->UpdateDateTime);
 CfgAddInt64(f, "LastConnectDateTime", a->LastConnectDateTime);


 if (a->ServerCert != ((void*)0))
 {
  BUF *b = XToBuf(a->ServerCert, 0);
  if (b != ((void*)0))
  {
   CfgAddBuf(f, "ServerCert", b);
   FreeBuf(b);
  }
 }


 if (IsZero(a->ShortcutKey, SHA1_SIZE) == 0)
 {
  char tmp[64];
  BinToStr(tmp, sizeof(tmp), a->ShortcutKey, SHA1_SIZE);
  CfgAddStr(f, "ShortcutKey", tmp);
 }
}
