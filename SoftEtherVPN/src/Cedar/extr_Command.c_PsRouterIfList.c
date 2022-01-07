
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp3 ;
typedef int tmp2 ;
typedef int tmp1 ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_12__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_11__ {int Rpc; } ;
struct TYPE_10__ {scalar_t__ NumItem; TYPE_1__* Items; int Name; } ;
struct TYPE_9__ {int HubName; int SubnetMask; int IpAddress; } ;
typedef TYPE_1__ RPC_L3IF ;
typedef TYPE_2__ RPC_ENUM_L3IF ;
typedef TYPE_3__ PS ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumL3If (TYPE_2__*) ;
 int GetParamStr (int *,char*) ;
 int IPToUniStr32 (int *,int,int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,TYPE_4__*,int) ;
 scalar_t__ ScEnumL3If (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int ) ;
 int StrToUni (int *,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;

UINT PsRouterIfList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_L3IF t;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_RouterIfList_PROMPT_NAME"), CmdEvalNotEmpty, ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));

 StrCpy(t.Name, sizeof(t.Name), GetParamStr(o, "[name]"));


 ret = ScEnumL3If(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  UINT i;
  wchar_t tmp1[MAX_SIZE];
  wchar_t tmp2[MAX_SIZE];
  wchar_t tmp3[MAX_SIZE];
  CT *ct = CtNew();

  CtInsertColumn(ct, _UU("SM_L3_SW_IF_COLUMN1"), 0);
  CtInsertColumn(ct, _UU("SM_L3_SW_IF_COLUMN2"), 0);
  CtInsertColumn(ct, _UU("SM_L3_SW_IF_COLUMN3"), 0);

  for (i = 0;i < t.NumItem;i++)
  {
   RPC_L3IF *e = &t.Items[i];

   IPToUniStr32(tmp1, sizeof(tmp1), e->IpAddress);
   IPToUniStr32(tmp2, sizeof(tmp2), e->SubnetMask);
   StrToUni(tmp3, sizeof(tmp3), e->HubName);

   CtInsert(ct, tmp1, tmp2, tmp3);
  }


  CtFree(ct, c);
 }

 FreeRpcEnumL3If(&t);

 FreeParamValueList(o);

 return 0;
}
