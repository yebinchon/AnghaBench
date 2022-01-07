
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp1 ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_15__ {int Rpc; int * HubName; } ;
struct TYPE_14__ {scalar_t__ NumGroup; TYPE_1__* Groups; int HubName; } ;
struct TYPE_13__ {int Note; int Realname; int NumUsers; int Name; } ;
typedef TYPE_1__ RPC_ENUM_GROUP_ITEM ;
typedef TYPE_2__ RPC_ENUM_GROUP ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CtFreeEx (int *,TYPE_4__*,int) ;
 int CtInsert (int *,int *,int ,int ,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumGroup (TYPE_2__*) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_4__*,char*,int *,int *,int ) ;
 scalar_t__ ScEnumGroup (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (int *,int,int ) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsGroupList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_GROUP t;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);


 ret = ScEnumGroup(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct = CtNew();
  UINT i;

  CtInsertColumn(ct, _UU("SM_GROUPLIST_NAME"), 0);
  CtInsertColumn(ct, _UU("SM_GROUPLIST_REALNAME"), 0);
  CtInsertColumn(ct, _UU("SM_GROUPLIST_NOTE"), 0);
  CtInsertColumn(ct, _UU("SM_GROUPLIST_NUMUSERS"), 0);

  for (i = 0;i < t.NumGroup;i++)
  {
   wchar_t tmp1[MAX_SIZE];
   wchar_t tmp2[MAX_SIZE];
   RPC_ENUM_GROUP_ITEM *e = &t.Groups[i];

   StrToUni(tmp1, sizeof(tmp1), e->Name);
   UniToStru(tmp2, e->NumUsers);

   CtInsert(ct, tmp1, e->Realname, e->Note, tmp2);
  }

  CtFreeEx(ct, c, 1);
 }

 FreeRpcEnumGroup(&t);

 FreeParamValueList(o);

 return 0;
}
