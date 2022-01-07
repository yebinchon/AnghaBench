
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int pass ;
typedef int UINT ;
struct TYPE_14__ {char* (* ReadPassword ) (TYPE_2__*,char*) ;int (* Write ) (TYPE_2__*,char*) ;} ;
struct TYPE_13__ {int LastError; } ;
typedef int REMOTE_CLIENT ;
typedef TYPE_1__ PC ;
typedef TYPE_2__ CONSOLE ;
typedef int CEDAR ;


 int * CcConnectRpc (char*,char*,int*,int*,int ) ;
 int CcDisconnectRpc (int *) ;
 int CmdPrintError (TYPE_2__*,int ) ;
 int ERR_ACCESS_DENIED ;
 int ERR_CONNECT_FAILED ;
 int ERR_INTERNAL_ERROR ;
 int Free (char*) ;
 int FreePc (TYPE_1__*) ;
 int MAX_SIZE ;
 int * NewCedar (int *,int *) ;
 TYPE_1__* NewPc (TYPE_2__*,int *,char*,int *) ;
 int PcMain (TYPE_1__*) ;
 int ReleaseCedar (int *) ;
 int StrCpy (char*,int,char*) ;
 char* _UU (char*) ;
 int stub1 (TYPE_2__*,char*) ;
 int stub2 (TYPE_2__*,char*) ;
 char* stub3 (TYPE_2__*,char*) ;
 int stub4 (TYPE_2__*,char*) ;

UINT PcConnect(CONSOLE *c, char *target, wchar_t *cmdline, char *password)
{
 CEDAR *cedar;
 REMOTE_CLIENT *client;
 bool bad_pass;
 bool no_remote;
 char pass[MAX_SIZE];
 UINT ret = 0;

 if (c == ((void*)0) || target == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 StrCpy(pass, sizeof(pass), password);

 cedar = NewCedar(((void*)0), ((void*)0));

RETRY:
 client = CcConnectRpc(target, pass, &bad_pass, &no_remote, 0);

 if (client == ((void*)0))
 {
  if (no_remote)
  {

   c->Write(c, _UU("CMD_VPNCMD_CLIENT_NO_REMODE"));
   ReleaseCedar(cedar);
   return ERR_INTERNAL_ERROR;
  }
  else if (bad_pass)
  {
   char *tmp;

   c->Write(c, _UU("CMD_VPNCMD_PASSWORD_1"));
   tmp = c->ReadPassword(c, _UU("CMD_VPNCMD_PASSWORD_2"));
   c->Write(c, L"");

   if (tmp == ((void*)0))
   {

    ReleaseCedar(cedar);
    return ERR_ACCESS_DENIED;
   }
   else
   {
    StrCpy(pass, sizeof(pass), tmp);
    Free(tmp);
   }

   goto RETRY;
  }
  else
  {

   CmdPrintError(c, ERR_CONNECT_FAILED);
   ReleaseCedar(cedar);
   return ERR_CONNECT_FAILED;
  }
 }
 else
 {

  PC *pc = NewPc(c, client, target, cmdline);
  PcMain(pc);
  ret = pc->LastError;
  FreePc(pc);
 }

 CcDisconnectRpc(client);

 ReleaseCedar(cedar);

 return ret;
}
