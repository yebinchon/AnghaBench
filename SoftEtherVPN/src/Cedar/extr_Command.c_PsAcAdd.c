
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_23__ {int Deny; int Masked; int Priority; int SubnetMask; int IpAddress; } ;
struct TYPE_22__ {char* member_0; int member_1; unsigned long member_2; } ;
struct TYPE_21__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_20__ {char* member_0; TYPE_5__* member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_19__ {int Rpc; int * HubName; } ;
struct TYPE_18__ {int o; int HubName; } ;
typedef TYPE_1__ RPC_AC_LIST ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;
typedef TYPE_5__ CMD_EVAL_MIN_MAX ;
typedef TYPE_6__ AC ;


 int CmdEvalIpAndMask4 ;
 int CmdEvalMinMax ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcAcList (TYPE_1__*) ;
 int GetParamInt (int *,char*) ;
 char* GetParamStr (int *,char*) ;
 int Insert (int ,TYPE_6__*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 int ParseIpAndMask4 (char*,scalar_t__*,scalar_t__*) ;
 scalar_t__ ScGetAcList (int ,TYPE_1__*) ;
 scalar_t__ ScSetAcList (int ,TYPE_1__*) ;
 scalar_t__ StartWith (char*,char*) ;
 int StrCpy (int ,int,int *) ;
 int UINTToIP (int *,scalar_t__) ;
 int Zero (TYPE_1__*,int) ;
 TYPE_6__* ZeroMalloc (int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsAcAdd(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_AC_LIST t;

 CMD_EVAL_MIN_MAX mm =
 {
  "CMD_AcAdd_Eval_PRIORITY", 1, 4294967295UL,
 };
 PARAM args[] =
 {

  {"[allow|deny]", CmdPrompt, _UU("CMD_AcAdd_Prompt_AD"), CmdEvalNotEmpty, ((void*)0)},
  {"PRIORITY", CmdPrompt, _UU("CMD_AcAdd_Prompt_PRIORITY"), CmdEvalMinMax, &mm},
  {"IP", CmdPrompt, _UU("CMD_AcAdd_Prompt_IP"), CmdEvalIpAndMask4, ((void*)0)},
 };


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);


 ret = ScGetAcList(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {

  AC *ac = ZeroMalloc(sizeof(AC));
  char *test = GetParamStr(o, "[allow|deny]");
  UINT u_ip, u_mask;

  if (StartWith("deny", test))
  {
   ac->Deny = 1;
  }

  ParseIpAndMask4(GetParamStr(o, "IP"), &u_ip, &u_mask);
  UINTToIP(&ac->IpAddress, u_ip);

  if (u_mask == 0xffffffff)
  {
   ac->Masked = 0;
  }
  else
  {
   ac->Masked = 1;
   UINTToIP(&ac->SubnetMask, u_mask);
  }

  ac->Priority = GetParamInt(o, "PRIORITY");

  Insert(t.o, ac);

  ret = ScSetAcList(ps->Rpc, &t);
  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }
 }

 FreeRpcAcList(&t);

 FreeParamValueList(o);

 return 0;
}
