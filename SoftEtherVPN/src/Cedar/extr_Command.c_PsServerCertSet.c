
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {int (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_18__ {char* member_0; char* member_2; int * member_4; int member_3; int member_1; } ;
struct TYPE_17__ {int Rpc; } ;
struct TYPE_16__ {scalar_t__ Flag1; int Key; int Cert; } ;
typedef TYPE_1__ RPC_KEY_PAIR ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int CmdEvalIsFile ;
 scalar_t__ CmdLoadCertAndKey (TYPE_4__*,int *,int *,int ,int ) ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcKeyPair (TYPE_1__*) ;
 int GetParamUniStr (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScSetServerCert (int ,TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_4__*,char*) ;
 int stub2 (TYPE_4__*,char*) ;
 int stub3 (TYPE_4__*,char*) ;

UINT PsServerCertSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_KEY_PAIR t;

 PARAM args[] =
 {

  {"LOADCERT", CmdPrompt, _UU("CMD_LOADCERTPATH"), CmdEvalIsFile, ((void*)0)},
  {"LOADKEY", CmdPrompt, _UU("CMD_LOADKEYPATH"), CmdEvalIsFile, ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));

 if (CmdLoadCertAndKey(c, &t.Cert, &t.Key,
  GetParamUniStr(o, "LOADCERT"),
  GetParamUniStr(o, "LOADKEY")))
 {

  ret = ScSetServerCert(ps->Rpc, &t);

  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }

  if (t.Flag1 == 0)
  {

   c->Write(c, L"");
   c->Write(c, _UU("SM_CERT_NEED_ROOT"));
   c->Write(c, L"");
  }

  FreeRpcKeyPair(&t);
 }
 else
 {
  ret = ERR_INTERNAL_ERROR;
 }

 FreeParamValueList(o);

 return ret;
}
