
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int groupname ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_29__ {int (* Write ) (TYPE_6__*,char*) ;} ;
struct TYPE_28__ {char* member_0; char* member_2; int * member_4; int member_3; int member_1; } ;
struct TYPE_27__ {char* HubName; int Rpc; } ;
struct TYPE_26__ {int Name; int GroupName; } ;
struct TYPE_25__ {char* HubName; char* Name; char* Realname; char* Note; scalar_t__ NumUser; TYPE_2__* Users; int * Policy; } ;
typedef TYPE_1__ RPC_SET_GROUP ;
typedef TYPE_2__ RPC_ENUM_USER_ITEM ;
typedef TYPE_1__ RPC_ENUM_USER ;
typedef TYPE_4__ PS ;
typedef TYPE_5__ PARAM ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_6__ CONSOLE ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_6__*,scalar_t__) ;
 int CmdPrompt ;
 int CtFree (int *,TYPE_6__*) ;
 int CtInsert (int *,char*,char*) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumUser (TYPE_1__*) ;
 int FreeRpcSetGroup (TYPE_1__*) ;
 char* GetParamStr (int *,char*) ;
 int MAX_SIZE ;
 int MAX_USERNAME_LEN ;
 int * ParseCommandList (TYPE_6__*,char*,char*,TYPE_5__*,int) ;
 int PrintPolicy (TYPE_6__*,int *,int) ;
 scalar_t__ ScEnumUser (int ,TYPE_1__*) ;
 scalar_t__ ScGetGroup (int ,TYPE_1__*) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrToUni (char*,int,char*) ;
 int UniFormat (char*,int,char*,int ) ;
 int Zero (TYPE_1__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_6__*,char*) ;
 int stub2 (TYPE_6__*,char*) ;
 int stub3 (TYPE_6__*,char*) ;
 int stub4 (TYPE_6__*,char*) ;
 int stub5 (TYPE_6__*,char*) ;
 int stub6 (TYPE_6__*,char*) ;
 int stub7 (TYPE_6__*,char*) ;

UINT PsGroupGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_SET_GROUP t;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_GroupCreate_Prompt_NAME"), CmdEvalNotEmpty, ((void*)0)},
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


 ret = ScGetGroup(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  wchar_t tmp[MAX_SIZE];
  char groupname[MAX_USERNAME_LEN + 1];
  CT *ct = CtNewStandard();

  StrCpy(groupname, sizeof(groupname), t.Name);

  StrToUni(tmp, sizeof(tmp), t.Name);
  CtInsert(ct, _UU("CMD_GroupGet_Column_NAME"), tmp);
  CtInsert(ct, _UU("CMD_GroupGet_Column_REALNAME"), t.Realname);
  CtInsert(ct, _UU("CMD_GroupGet_Column_NOTE"), t.Note);

  CtFree(ct, c);

  if (t.Policy != ((void*)0))
  {
   c->Write(c, L"");
   c->Write(c, _UU("CMD_GroupGet_Column_POLICY"));

   PrintPolicy(c, t.Policy, 0);
  }

  {
   RPC_ENUM_USER t;
   bool b = 0;

   Zero(&t, sizeof(t));

   StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);

   if (ScEnumUser(ps->Rpc, &t) == ERR_NO_ERROR)
   {
    UINT i;

    for (i = 0;i < t.NumUser;i++)
    {
     RPC_ENUM_USER_ITEM *u = &t.Users[i];

     if (StrCmpi(u->GroupName, groupname) == 0)
     {
      if (b == 0)
      {
       b = 1;
       c->Write(c, L"");
       c->Write(c, _UU("CMD_GroupGet_Column_MEMBERS"));
      }

      UniFormat(tmp, sizeof(tmp), L" %S", u->Name);
      c->Write(c, tmp);
     }
    }
    FreeRpcEnumUser(&t);

    if (b)
    {
     c->Write(c, L"");
    }
   }
  }

 }

 FreeRpcSetGroup(&t);

 FreeParamValueList(o);

 return 0;
}
