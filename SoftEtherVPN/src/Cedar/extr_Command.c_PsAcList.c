
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp3 ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_18__ {int Priority; scalar_t__ Deny; int Id; } ;
struct TYPE_17__ {int (* Write ) (TYPE_3__*,int *) ;} ;
struct TYPE_16__ {int Rpc; int * HubName; } ;
struct TYPE_15__ {int o; int HubName; } ;
typedef TYPE_1__ RPC_AC_LIST ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_3__ CONSOLE ;
typedef TYPE_4__ AC ;


 int CmdPrintError (TYPE_3__*,scalar_t__) ;
 int CtFree (int *,TYPE_3__*) ;
 int CtInsert (int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int *,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (char*) ;
 int FreeParamValueList (int *) ;
 int FreeRpcAcList (TYPE_1__*) ;
 char* GenerateAcStr (TYPE_4__*) ;
 TYPE_4__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_3__*,char*,int *,int *,int ) ;
 scalar_t__ ScGetAcList (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (int *,int,char*) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_3__*,int *) ;

UINT PsAcList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_AC_LIST t;


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


 ret = ScGetAcList(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  UINT i;
  CT *ct;

  ct = CtNew();
  CtInsertColumn(ct, _UU("SM_AC_COLUMN_1"), 1);
  CtInsertColumn(ct, _UU("SM_AC_COLUMN_2"), 1);
  CtInsertColumn(ct, _UU("SM_AC_COLUMN_3"), 0);
  CtInsertColumn(ct, _UU("SM_AC_COLUMN_4"), 0);

  for (i = 0;i < LIST_NUM(t.o);i++)
  {
   wchar_t tmp1[32], *tmp2, tmp3[MAX_SIZE], tmp4[32];
   char *tmp_str;
   AC *ac = LIST_DATA(t.o, i);

   UniToStru(tmp1, ac->Id);
   tmp2 = ac->Deny ? _UU("SM_AC_DENY") : _UU("SM_AC_PASS");
   tmp_str = GenerateAcStr(ac);
   StrToUni(tmp3, sizeof(tmp3), tmp_str);

   Free(tmp_str);

   UniToStru(tmp4, ac->Priority);

   CtInsert(ct, tmp1, tmp4, tmp2, tmp3);
  }

  CtFree(ct, c);
 }

 FreeRpcAcList(&t);

 FreeParamValueList(o);

 return 0;
}
