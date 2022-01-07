
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_17__ {int (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_16__ {char* member_0; char* member_2; int * member_4; int member_3; int member_1; } ;
struct TYPE_15__ {int Rpc; } ;
struct TYPE_14__ {int StrValue; } ;
typedef TYPE_1__ RPC_TEST ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScRegenerateServerCert (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_4__*,char*) ;
 int stub2 (TYPE_4__*,char*) ;
 int stub3 (TYPE_4__*,char*) ;

UINT PsServerCertRegenerate(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_TEST t;

 PARAM args[] =
 {

  {"[CN]", CmdPrompt, _UU("CMD_ServerCertRegenerate_Prompt_CN"), CmdEvalNotEmpty, ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.StrValue, sizeof(t.StrValue), GetParamStr(o, "[CN]"));


 ret = ScRegenerateServerCert(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 c->Write(c, L"");
 c->Write(c, _UU("CM_CERT_SET_MSG"));
 c->Write(c, L"");

 FreeParamValueList(o);

 return 0;
}
