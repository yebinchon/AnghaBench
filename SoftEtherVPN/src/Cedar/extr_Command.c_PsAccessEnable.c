
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {scalar_t__ Id; int Active; } ;
struct TYPE_18__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_17__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_16__ {int Rpc; int * HubName; } ;
struct TYPE_15__ {scalar_t__ NumAccess; TYPE_5__* Accesses; int HubName; } ;
typedef TYPE_1__ RPC_ENUM_ACCESS_LIST ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;
typedef TYPE_5__ ACCESS ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumAccessList (TYPE_1__*) ;
 scalar_t__ GetParamInt (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScEnumAccess (int ,TYPE_1__*) ;
 scalar_t__ ScSetAccessList (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsAccessEnable(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_ACCESS_LIST t;

 PARAM args[] =
 {

  {"[id]", CmdPrompt, _UU("CMD_Access_Prompt_ID"), CmdEvalNotEmpty, ((void*)0)},
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


 ret = ScEnumAccess(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  UINT i;
  bool b = 0;
  for (i = 0;i < t.NumAccess;i++)
  {
   ACCESS *a = &t.Accesses[i];

   if (a->Id == GetParamInt(o, "[id]"))
   {
    b = 1;

    a->Active = 1;
   }
  }

  if (b == 0)
  {

   ret = ERR_OBJECT_NOT_FOUND;
   CmdPrintError(c, ret);
   FreeParamValueList(o);
   FreeRpcEnumAccessList(&t);
   return ret;
  }

  ret = ScSetAccessList(ps->Rpc, &t);
  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }

  FreeRpcEnumAccessList(&t);
 }

 FreeParamValueList(o);

 return ret;
}
