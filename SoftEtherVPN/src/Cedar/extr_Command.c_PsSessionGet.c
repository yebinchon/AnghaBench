
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int str ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_17__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_16__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_15__ {int Rpc; int * HubName; } ;
struct TYPE_14__ {char* ClientHostName; char* Username; char* RealUsername; char* GroupName; int NodeInfo; int Status; int ClientIp6; int ClientIp; int Name; int HubName; } ;
typedef TYPE_1__ RPC_SESSION_STATUS ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_4__ CONSOLE ;


 int BRIDGE_USER_NAME_PRINT ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrintNodeInfo (int *,int *) ;
 int CmdPrintStatusToListViewEx (int *,int *,int) ;
 int CmdPrompt ;
 int CtFree (int *,TYPE_4__*) ;
 int CtInsert (int *,int ,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcSessionStatus (TYPE_1__*) ;
 int * GetParamStr (int *,char*) ;
 int IPToStr4or6 (char*,int,int ,int ) ;
 int IsEmptyStr (char*) ;
 int L3_USERNAME ;
 int LINK_USER_NAME_PRINT ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 int SNAT_USER_NAME_PRINT ;
 scalar_t__ ScGetSessionStatus (int ,TYPE_1__*) ;
 int StartWith (char*,int ) ;
 scalar_t__ StrCmpi (char*,int ) ;
 int StrCpy (int ,int,int *) ;
 scalar_t__ StrLen (char*) ;
 int StrToUni (int *,int,char*) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsSessionGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_SESSION_STATUS t;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_SessionGet_Prompt_NAME"), CmdEvalNotEmpty, ((void*)0)},
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
 StrCpy(t.Name, sizeof(t.Name), GetParamStr(o, "[name]"));


 ret = ScGetSessionStatus(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  wchar_t tmp[MAX_SIZE];
  char str[MAX_SIZE];
  CT *ct = CtNewStandard();

  if (t.ClientIp != 0)
  {
   IPToStr4or6(str, sizeof(str), t.ClientIp, t.ClientIp6);
   StrToUni(tmp, sizeof(tmp), str);
   CtInsert(ct, _UU("SM_CLIENT_IP"), tmp);
  }

  if (StrLen(t.ClientHostName) != 0)
  {
   StrToUni(tmp, sizeof(tmp), t.ClientHostName);
   CtInsert(ct, _UU("SM_CLIENT_HOSTNAME"), tmp);
  }

  StrToUni(tmp, sizeof(tmp), t.Username);
  CtInsert(ct, _UU("SM_SESS_STATUS_USERNAME"), tmp);

  if (StrCmpi(t.Username, LINK_USER_NAME_PRINT) != 0 && StrCmpi(t.Username, SNAT_USER_NAME_PRINT) != 0 && StrCmpi(t.Username, BRIDGE_USER_NAME_PRINT) != 0)
  {
   StrToUni(tmp, sizeof(tmp), t.RealUsername);
   CtInsert(ct, _UU("SM_SESS_STATUS_REALUSER"), tmp);
  }

  if (IsEmptyStr(t.GroupName) == 0)
  {
   StrToUni(tmp, sizeof(tmp), t.GroupName);
   CtInsert(ct, _UU("SM_SESS_STATUS_GROUPNAME"), tmp);
  }


  CmdPrintStatusToListViewEx(ct, &t.Status, 1);

  if (StrCmpi(t.Username, LINK_USER_NAME_PRINT) != 0 && StrCmpi(t.Username, SNAT_USER_NAME_PRINT) != 0 && StrCmpi(t.Username, BRIDGE_USER_NAME_PRINT) != 0 &&
   StartWith(t.Username, L3_USERNAME) == 0)
  {
   CmdPrintNodeInfo(ct, &t.NodeInfo);
  }

  CtFree(ct, c);
 }

 FreeRpcSessionStatus(&t);

 FreeParamValueList(o);

 return 0;
}
