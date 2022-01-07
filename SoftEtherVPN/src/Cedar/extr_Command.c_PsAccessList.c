
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp4 ;
typedef int tmp2 ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_17__ {scalar_t__ Priority; scalar_t__ UniqueId; scalar_t__ Id; int Note; scalar_t__ Active; scalar_t__ Discard; } ;
struct TYPE_16__ {int (* Write ) (TYPE_3__*,int ) ;} ;
struct TYPE_15__ {int Rpc; int * HubName; } ;
struct TYPE_14__ {scalar_t__ NumAccess; TYPE_4__* Accesses; int HubName; } ;
typedef TYPE_1__ RPC_ENUM_ACCESS_LIST ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_3__ CONSOLE ;
typedef TYPE_4__ ACCESS ;


 int CmdPrintError (TYPE_3__*,scalar_t__) ;
 int CtFreeEx (int *,TYPE_3__*,int) ;
 int CtInsert (int *,int *,int ,int ,int *,int *,int *,int ) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumAccessList (TYPE_1__*) ;
 int GetAccessListStr (char*,int,TYPE_4__*) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_3__*,char*,int *,int *,int ) ;
 scalar_t__ ScEnumAccess (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (int *,int,char*) ;
 int UniStrCpy (int *,int,int ) ;
 int UniToStru (int *,scalar_t__) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_3__*,int ) ;

UINT PsAccessList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_ACCESS_LIST t;
 CT *ct;
 UINT i;


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
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

 ct = CtNew();
 CtInsertColumn(ct, _UU("SM_ACCESS_COLUMN_0"), 1);
 CtInsertColumn(ct, _UU("SM_ACCESS_COLUMN_1"), 1);
 CtInsertColumn(ct, _UU("SM_ACCESS_COLUMN_2"), 1);
 CtInsertColumn(ct, _UU("SM_ACCESS_COLUMN_3"), 1);
 CtInsertColumn(ct, _UU("SM_ACCESS_COLUMN_6"), 1);
 CtInsertColumn(ct, _UU("SM_ACCESS_COLUMN_5"), 0);
 CtInsertColumn(ct, _UU("SM_ACCESS_COLUMN_4"), 0);

 for (i = 0;i < t.NumAccess;i++)
 {
  ACCESS *a = &t.Accesses[i];
  char tmp[MAX_SIZE];
  wchar_t tmp3[MAX_SIZE];
  wchar_t tmp1[MAX_SIZE];
  wchar_t tmp2[MAX_SIZE];
  wchar_t tmp4[MAX_SIZE];

  GetAccessListStr(tmp, sizeof(tmp), a);
  UniToStru(tmp1, a->Priority);
  StrToUni(tmp2, sizeof(tmp2), tmp);
  UniToStru(tmp4, a->UniqueId);
  if (a->UniqueId == 0)
  {
   UniStrCpy(tmp4, sizeof(tmp4), _UU("SEC_NONE"));
  }

  UniToStru(tmp3, a->Id);

  CtInsert(ct,
   tmp3,
   a->Discard ? _UU("SM_ACCESS_DISCARD") : _UU("SM_ACCESS_PASS"),
   a->Active ? _UU("SM_ACCESS_ENABLE") : _UU("SM_ACCESS_DISABLE"),
   tmp1,
   tmp4,
   tmp2,
   a->Note);
 }

 CtFreeEx(ct, c, 1);

 FreeRpcEnumAccessList(&t);

 FreeParamValueList(o);

 return 0;
}
