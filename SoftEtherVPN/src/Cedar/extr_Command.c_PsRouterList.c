
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp1 ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int Rpc; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__* Items; } ;
struct TYPE_7__ {int Active; int Online; int NumTables; int NumInterfaces; int Name; } ;
typedef TYPE_1__ RPC_ENUM_L3SW_ITEM ;
typedef TYPE_2__ RPC_ENUM_L3SW ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int *,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumL3Sw (TYPE_2__*) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScEnumL3Switch (int ,TYPE_2__*) ;
 int StrToUni (int *,int,int ) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_2__*,int) ;
 int * _UU (char*) ;

UINT PsRouterList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_L3SW t;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScEnumL3Switch(ps->Rpc, &t);

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

  CtInsertColumn(ct, _UU("SM_L3_SW_COLUMN1"), 0);
  CtInsertColumn(ct, _UU("SM_L3_SW_COLUMN2"), 0);
  CtInsertColumn(ct, _UU("SM_L3_SW_COLUMN3"), 1);
  CtInsertColumn(ct, _UU("SM_L3_SW_COLUMN4"), 1);

  for (i = 0;i < t.NumItem;i++)
  {
   RPC_ENUM_L3SW_ITEM *e = &t.Items[i];
   wchar_t tmp1[MAX_SIZE], *tmp2, tmp3[64], tmp4[64];

   StrToUni(tmp1, sizeof(tmp1), e->Name);
   if (e->Active == 0)
   {
    tmp2 = _UU("SM_L3_SW_ST_F_F");
   }
   else if (e->Online == 0)
   {
    tmp2 = _UU("SM_L3_SW_ST_T_F");
   }
   else
   {
    tmp2 = _UU("SM_L3_SW_ST_T_T");
   }
   UniToStru(tmp3, e->NumInterfaces);
   UniToStru(tmp4, e->NumTables);

   CtInsert(ct,
    tmp1, tmp2, tmp3, tmp4);
  }

  CtFree(ct, c);
 }

 FreeRpcEnumL3Sw(&t);

 FreeParamValueList(o);

 return 0;
}
