
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int st ;
typedef int dtstr ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int CapsList; int Rpc; } ;
struct TYPE_5__ {scalar_t__ EditionId; scalar_t__ ReleaseDate; char* SystemId; scalar_t__ SystemExpires; int NeedSubscription; scalar_t__ SubscriptionExpires; scalar_t__ NumClientConnectLicense; scalar_t__ NumBridgeConnectLicense; scalar_t__ AllowEnterpriseFunction; scalar_t__ IsSubscriptionExpired; int EditionStr; } ;
typedef TYPE_1__ RPC_LICENSE_STATUS ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFreeEx (int *,int *,int) ;
 int CtInsert (int *,char*,char*) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 scalar_t__ GetCapsBool (int ,char*) ;
 int GetDateStrEx64 (char*,int,scalar_t__,int *) ;
 scalar_t__ INFINITE ;
 scalar_t__ LICENSE_EDITION_VPN3_NO_LICENSE ;
 int MAX_PATH ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,char*,int *,int ) ;
 scalar_t__ ScGetLicenseStatus (int ,TYPE_1__*) ;
 int StrToUni (char*,int,int ) ;
 int UniFormat (char*,int,char*,char*) ;
 int UniStrCpy (char*,int,char*) ;
 int UniToStru (char*,scalar_t__) ;
 int Zero (TYPE_1__*,int) ;
 char* _UU (char*) ;

UINT PsLicenseStatus(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_LICENSE_STATUS st;
 CT *ct;
 wchar_t tmp[MAX_SIZE];

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&st, sizeof(st));


 ret = ScGetLicenseStatus(ps->Rpc, &st);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 ct = CtNewStandard();

 if (st.EditionId == LICENSE_EDITION_VPN3_NO_LICENSE)
 {
  CtInsert(ct, _UU("SM_NO_LICENSE_COLUMN"), _UU("SM_NO_LICENSE"));
 }
 else
 {

  StrToUni(tmp, sizeof(tmp), st.EditionStr);
  CtInsert(ct, _UU("SM_LICENSE_STATUS_EDITION"), tmp);


  if (st.ReleaseDate != 0)
  {
   GetDateStrEx64(tmp, sizeof(tmp), st.ReleaseDate, ((void*)0));
   CtInsert(ct, _UU("SM_LICENSE_STATUS_RELEASE"), tmp);
  }


  UniFormat(tmp, sizeof(tmp), L"%I64u", st.SystemId);
  CtInsert(ct, _UU("SM_LICENSE_STATUS_SYSTEM_ID"), tmp);


  if (st.SystemExpires == 0)
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("SM_LICENSE_NO_EXPIRES"));
  }
  else
  {
   GetDateStrEx64(tmp, sizeof(tmp), st.SystemExpires, ((void*)0));
  }
  CtInsert(ct, _UU("SM_LICENSE_STATUS_EXPIRES"), tmp);


  if (st.NeedSubscription == 0)
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("SM_LICENSE_STATUS_SUBSCRIPTION_NONEED"));
  }
  else
  {
   if (st.SubscriptionExpires == 0)
   {
    UniStrCpy(tmp, sizeof(tmp), _UU("SM_LICENSE_STATUS_SUBSCRIPTION_NONE"));
   }
   else
   {
    wchar_t dtstr[MAX_PATH];

    GetDateStrEx64(dtstr, sizeof(dtstr), st.SubscriptionExpires, ((void*)0));

    UniFormat(tmp, sizeof(tmp),
     st.IsSubscriptionExpired ? _UU("SM_LICENSE_STATUS_SUBSCRIPTION_EXPIRED") : _UU("SM_LICENSE_STATUS_SUBSCRIPTION_VALID"),
     dtstr);
   }
  }
  CtInsert(ct, _UU("SM_LICENSE_STATUS_SUBSCRIPTION"), tmp);

  if (st.NeedSubscription == 0 && st.SubscriptionExpires != 0)
  {
   wchar_t dtstr[MAX_PATH];

   GetDateStrEx64(dtstr, sizeof(dtstr), st.SubscriptionExpires, ((void*)0));

   CtInsert(ct, _UU("SM_LICENSE_STATUS_SUBSCRIPTION_BUILD_STR"), tmp);
  }

  if (GetCapsBool(ps->CapsList, "b_vpn3"))
  {

   if (st.NumClientConnectLicense == INFINITE)
   {
    UniStrCpy(tmp, sizeof(tmp), _UU("SM_LICENSE_INFINITE"));
   }
   else
   {
    UniToStru(tmp, st.NumClientConnectLicense);
   }
   CtInsert(ct, _UU("SM_LICENSE_NUM_CLIENT"), tmp);
  }


  if (st.NumBridgeConnectLicense == INFINITE)
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("SM_LICENSE_INFINITE"));
  }
  else
  {
   UniToStru(tmp, st.NumBridgeConnectLicense);
  }
  CtInsert(ct, _UU("SM_LICENSE_NUM_BRIDGE"), tmp);


  CtInsert(ct, _UU("SM_LICENSE_STATUS_ENTERPRISE"),
   st.AllowEnterpriseFunction ? _UU("SM_LICENSE_STATUS_ENTERPRISE_YES") : _UU("SM_LICENSE_STATUS_ENTERPRISE_NO"));
 }

 CtFreeEx(ct, c, 0);

 FreeParamValueList(o);

 return 0;
}
