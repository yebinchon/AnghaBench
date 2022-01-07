
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int PasswordRemoteOnly; int EncryptedPassword; } ;
struct TYPE_7__ {char* Password; int PasswordRemoteOnly; } ;
typedef TYPE_1__ RPC_CLIENT_PASSWORD ;
typedef TYPE_2__ CLIENT ;


 int CLog (TYPE_2__*,char*) ;
 int CiSaveConfigurationFile (TYPE_2__*) ;
 int Sha0 (int ,char*,int ) ;
 scalar_t__ StrCmp (char*,char*) ;
 int StrLen (char*) ;

bool CtSetPassword(CLIENT *c, RPC_CLIENT_PASSWORD *pass)
{
 char *str;
 if (c == ((void*)0))
 {
  return 0;
 }

 str = pass->Password;

 if (StrCmp(str, "********") != 0)
 {

  Sha0(c->EncryptedPassword, str, StrLen(str));
 }

 c->PasswordRemoteOnly = pass->PasswordRemoteOnly;

 CLog(c, "LC_SET_PASSWORD");

 CiSaveConfigurationFile(c);

 return 1;
}
