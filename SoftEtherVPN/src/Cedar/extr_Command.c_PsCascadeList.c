
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp4 ;
typedef int tmp3 ;
typedef int tmp2 ;
typedef int tmp1 ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_15__ {int Rpc; int * HubName; } ;
struct TYPE_14__ {scalar_t__ NumLink; TYPE_1__* Links; int HubName; } ;
struct TYPE_13__ {int Online; scalar_t__ LastError; int AccountName; scalar_t__ Connected; int HubName; int Hostname; int ConnectedTime; } ;
typedef TYPE_1__ RPC_ENUM_LINK_ITEM ;
typedef TYPE_2__ RPC_ENUM_LINK ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CtFreeEx (int *,TYPE_4__*,int) ;
 int CtInsert (int *,int ,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumLink (TYPE_2__*) ;
 int GetDateTimeStrEx64 (int *,int,int ,int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_4__*,char*,int *,int *,int ) ;
 scalar_t__ ScEnumLink (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (int *,int,int ) ;
 int SystemToLocal64 (int ) ;
 int UniFormat (int *,int,int ,scalar_t__,int ) ;
 int UniStrCpy (int *,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 int _E (scalar_t__) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsCascadeList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_LINK t;


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


 ret = ScEnumLink(ps->Rpc, &t);

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

  CtInsertColumn(ct, _UU("SM_LINK_COLUMN_1"), 0);
  CtInsertColumn(ct, _UU("SM_LINK_COLUMN_2"), 0);
  CtInsertColumn(ct, _UU("SM_LINK_COLUMN_3"), 0);
  CtInsertColumn(ct, _UU("SM_LINK_COLUMN_4"), 0);
  CtInsertColumn(ct, _UU("SM_LINK_COLUMN_5"), 0);

  for (i = 0;i < t.NumLink;i++)
  {
   RPC_ENUM_LINK_ITEM *e = &t.Links[i];
   wchar_t tmp1[MAX_SIZE];
   wchar_t tmp2[MAX_SIZE];
   wchar_t tmp3[MAX_SIZE];
   wchar_t tmp4[MAX_SIZE];

   GetDateTimeStrEx64(tmp1, sizeof(tmp1), SystemToLocal64(e->ConnectedTime), ((void*)0));
   StrToUni(tmp2, sizeof(tmp2), e->Hostname);
   StrToUni(tmp3, sizeof(tmp3), e->HubName);

   if (e->Online == 0)
   {
    UniStrCpy(tmp4, sizeof(tmp4), _UU("SM_LINK_STATUS_OFFLINE"));
   }
   else
   {
    if (e->Connected)
    {
     UniStrCpy(tmp4, sizeof(tmp4), _UU("SM_LINK_STATUS_ONLINE"));
    }
    else
    {
     if (e->LastError != 0)
     {
      UniFormat(tmp4, sizeof(tmp4), _UU("SM_LINK_STATUS_ERROR"), e->LastError, _E(e->LastError));
     }
     else
     {
      UniStrCpy(tmp4, sizeof(tmp4), _UU("SM_LINK_CONNECTING"));
     }
    }
   }

   CtInsert(ct, e->AccountName, tmp4, tmp1, tmp2, tmp3);
  }

  CtFreeEx(ct, c, 1);
 }

 FreeRpcEnumLink(&t);

 FreeParamValueList(o);

 return 0;
}
