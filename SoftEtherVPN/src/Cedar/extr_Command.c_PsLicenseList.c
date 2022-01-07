
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp8 ;
typedef int tmp6 ;
typedef int tmp5 ;
typedef int tmp3 ;
typedef int tmp2 ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int Rpc; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__* Items; } ;
struct TYPE_7__ {scalar_t__ Expires; int SerialId; int SystemId; int ProductId; int LicenseId; int Status; int LicenseName; int LicenseKey; int Id; } ;
typedef TYPE_1__ RPC_ENUM_LICENSE_KEY_ITEM ;
typedef TYPE_2__ RPC_ENUM_LICENSE_KEY ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFreeEx (int *,int *,int) ;
 int CtInsert (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumLicenseKey (TYPE_2__*) ;
 int GetDateStrEx64 (int *,int,scalar_t__,int *) ;
 int LICENSE_KEYSTR_LEN ;
 int LICENSE_LICENSEID_STR_LEN ;
 int LICENSE_MAX_PRODUCT_NAME_LEN ;
 int * LiGetLicenseStatusStr (int ) ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScEnumLicenseKey (int ,TYPE_2__*) ;
 int StrToUni (int *,int,int ) ;
 int UniFormat (int *,int,char*,int ) ;
 int UniStrCpy (int *,int,int ) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;

UINT PsLicenseList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_LICENSE_KEY t;
 CT *ct;
 UINT i;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScEnumLicenseKey(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 ct = CtNew();
 CtInsertColumn(ct, _UU("SM_LICENSE_COLUMN_1"), 0);
 CtInsertColumn(ct, _UU("SM_LICENSE_COLUMN_2"), 0);
 CtInsertColumn(ct, _UU("SM_LICENSE_COLUMN_3"), 0);
 CtInsertColumn(ct, _UU("SM_LICENSE_COLUMN_4"), 0);
 CtInsertColumn(ct, _UU("SM_LICENSE_COLUMN_5"), 0);
 CtInsertColumn(ct, _UU("SM_LICENSE_COLUMN_6"), 0);
 CtInsertColumn(ct, _UU("SM_LICENSE_COLUMN_7"), 0);
 CtInsertColumn(ct, _UU("SM_LICENSE_COLUMN_8"), 0);
 CtInsertColumn(ct, _UU("SM_LICENSE_COLUMN_9"), 0);

 for (i = 0;i < t.NumItem;i++)
 {
  wchar_t tmp1[32], tmp2[LICENSE_KEYSTR_LEN + 1], tmp3[LICENSE_MAX_PRODUCT_NAME_LEN + 1],
   *tmp4, tmp5[128], tmp6[LICENSE_LICENSEID_STR_LEN + 1], tmp7[64],
   tmp8[64], tmp9[64];
  RPC_ENUM_LICENSE_KEY_ITEM *e = &t.Items[i];

  UniToStru(tmp1, e->Id);
  StrToUni(tmp2, sizeof(tmp2), e->LicenseKey);
  StrToUni(tmp3, sizeof(tmp3), e->LicenseName);
  tmp4 = LiGetLicenseStatusStr(e->Status);
  if (e->Expires == 0)
  {
   UniStrCpy(tmp5, sizeof(tmp5), _UU("SM_LICENSE_NO_EXPIRES"));
  }
  else
  {
   GetDateStrEx64(tmp5, sizeof(tmp5), e->Expires, ((void*)0));
  }
  StrToUni(tmp6, sizeof(tmp6), e->LicenseId);
  UniToStru(tmp7, e->ProductId);
  UniFormat(tmp8, sizeof(tmp8), L"%I64u", e->SystemId);
  UniToStru(tmp9, e->SerialId);

  CtInsert(ct,
   tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9);
 }

 CtFreeEx(ct, c, 1);

 FreeRpcEnumLicenseKey(&t);

 FreeParamValueList(o);

 return 0;
}
