
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int name ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_21__ {int (* Write ) (TYPE_5__*,int *) ;} ;
struct TYPE_20__ {char* member_0; int * member_4; int member_3; int * member_2; int member_1; } ;
struct TYPE_19__ {int RemoteClient; } ;
struct TYPE_18__ {TYPE_1__* ClientOption; } ;
struct TYPE_17__ {int AccountName; } ;
typedef TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef TYPE_3__ PC ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef TYPE_5__ CONSOLE ;
typedef int BUF ;


 scalar_t__ CcCreateAccount (int ,TYPE_2__*) ;
 TYPE_2__* CiCfgToAccount (int *) ;
 int CiFreeClientCreateAccount (TYPE_2__*) ;
 int CmdEvalIsFile ;
 int CmdGenerateImportName (int ,int *,int,int ) ;
 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (TYPE_2__*) ;
 int FreeBuf (int *) ;
 int FreeParamValueList (int *) ;
 int GetParamUniStr (int *,char*) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_5__*,char*,int *,TYPE_4__*,int) ;
 int * ReadDumpW (int ) ;
 int UniFormat (int *,int,int *,int *) ;
 int UniStrCpy (int ,int,int *) ;
 int * _UU (char*) ;
 int stub1 (TYPE_5__*,int *) ;
 int stub2 (TYPE_5__*,int *) ;
 int stub3 (TYPE_5__*,int *) ;

UINT PcAccountImport(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 BUF *b;
 wchar_t name[MAX_SIZE];

 PARAM args[] =
 {
  {"[path]", CmdPrompt, _UU("CMD_AccountImport_PROMPT_PATH"), CmdEvalIsFile, ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 b = ReadDumpW(GetParamUniStr(o, "[path]"));

 if (b == ((void*)0))
 {

  c->Write(c, _UU("CMD_LOADFILE_FAILED"));
  ret = ERR_INTERNAL_ERROR;
 }
 else
 {
  RPC_CLIENT_CREATE_ACCOUNT *t;

  t = CiCfgToAccount(b);

  if (t == ((void*)0))
  {

   c->Write(c, _UU("CMD_AccountImport_FAILED_PARSE"));
   ret = ERR_INTERNAL_ERROR;
  }
  else
  {
   CmdGenerateImportName(pc->RemoteClient, name, sizeof(name), t->ClientOption->AccountName);
   UniStrCpy(t->ClientOption->AccountName, sizeof(t->ClientOption->AccountName), name);

   ret = CcCreateAccount(pc->RemoteClient, t);

   if (ret == ERR_NO_ERROR)
   {
    wchar_t tmp[MAX_SIZE];

    UniFormat(tmp, sizeof(tmp), _UU("CMD_AccountImport_OK"), name);
    c->Write(c, tmp);
   }

   CiFreeClientCreateAccount(t);
   Free(t);
  }

  FreeBuf(b);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
