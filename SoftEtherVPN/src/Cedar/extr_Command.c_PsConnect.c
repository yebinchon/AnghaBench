
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int wchar_t ;
typedef int o ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_17__ {int ProxyType; scalar_t__ Port; int Hostname; int AccountName; } ;
struct TYPE_16__ {int ProgrammingMode; char* (* ReadPassword ) (TYPE_2__*,char*) ;int (* Write ) (TYPE_2__*,char*) ;} ;
struct TYPE_15__ {scalar_t__ LastError; } ;
typedef int RPC ;
typedef TYPE_1__ PS ;
typedef TYPE_2__ CONSOLE ;
typedef TYPE_3__ CLIENT_OPTION ;
typedef int CEDAR ;


 int * AdminConnectEx (int *,TYPE_3__*,char*,int *,scalar_t__*,int ) ;
 int AdminDisconnect (int *) ;
 int CEDAR_CUI_STR ;
 int CmdPrintError (TYPE_2__*,scalar_t__) ;
 scalar_t__ ERR_ACCESS_DENIED ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 int Free (char*) ;
 int FreePs (TYPE_1__*) ;
 int IsEmptyStr (char*) ;
 int * NewCedar (int *,int *) ;
 TYPE_1__* NewPs (TYPE_2__*,int *,char*,scalar_t__,char*,char*,int *) ;
 int PROXY_DIRECT ;
 int PsMain (TYPE_1__*) ;
 int ReleaseCedar (int *) ;
 int SHA1_SIZE ;
 int Sha0 (int *,char*,int ) ;
 int StrCpy (int ,int,char*) ;
 int StrLen (char*) ;
 int UniStrCpy (int ,int,char*) ;
 int Zero (TYPE_3__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_2__*,char*) ;
 char* stub2 (TYPE_2__*,char*) ;
 int stub3 (TYPE_2__*,char*) ;

UINT PsConnect(CONSOLE *c, char *host, UINT port, char *hub, char *adminhub, wchar_t *cmdline, char *password)
{
 UINT retcode = 0;
 RPC *rpc = ((void*)0);
 CEDAR *cedar;
 CLIENT_OPTION o;
 UCHAR hashed_password[SHA1_SIZE];
 bool b = 0;

 if (c == ((void*)0) || host == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }
 if (port == 0)
 {
  port = 443;
 }
 if (hub != ((void*)0))
 {
  adminhub = ((void*)0);
 }

 cedar = NewCedar(((void*)0), ((void*)0));

 Zero(&o, sizeof(o));
 UniStrCpy(o.AccountName, sizeof(o.AccountName), L"VPNCMD");
 StrCpy(o.Hostname, sizeof(o.Hostname), host);
 o.Port = port;
 o.ProxyType = PROXY_DIRECT;

 Sha0(hashed_password, password, StrLen(password));

 if (IsEmptyStr(password) == 0)
 {
  b = 1;
 }


 while (1)
 {
  UINT err;

  rpc = AdminConnectEx(cedar, &o, hub, hashed_password, &err, CEDAR_CUI_STR);
  if (rpc == ((void*)0))
  {

   retcode = err;

   if (err == ERR_ACCESS_DENIED && c->ProgrammingMode == 0)
   {
    char *pass;

    if (b)
    {

     c->Write(c, _UU("CMD_VPNCMD_PASSWORD_1"));
    }

    b = 1;

    pass = c->ReadPassword(c, _UU("CMD_VPNCMD_PASSWORD_2"));
    c->Write(c, L"");

    if (pass != ((void*)0))
    {
     Sha0(hashed_password, pass, StrLen(pass));
     Free(pass);
    }
    else
    {
     break;
    }
   }
   else
   {

    CmdPrintError(c, err);
    break;
   }
  }
  else
  {
   PS *ps;


   ps = NewPs(c, rpc, host, port, hub, adminhub, cmdline);
   PsMain(ps);
   retcode = ps->LastError;
   FreePs(ps);
   AdminDisconnect(rpc);
   break;
  }
 }

 ReleaseCedar(cedar);

 return retcode;
}
