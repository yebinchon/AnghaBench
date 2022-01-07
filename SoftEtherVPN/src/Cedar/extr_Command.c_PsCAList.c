
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_15__ {int Rpc; int * HubName; } ;
struct TYPE_14__ {scalar_t__ NumCa; TYPE_1__* Ca; int HubName; } ;
struct TYPE_13__ {char* SubjectName; char* IssuerName; int Key; int Expires; } ;
typedef TYPE_1__ RPC_HUB_ENUM_CA_ITEM ;
typedef TYPE_2__ RPC_HUB_ENUM_CA ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CtFree (int *,TYPE_4__*) ;
 int CtInsert (int *,char*,char*) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcHubEnumCa (TYPE_2__*) ;
 int GetDateStrEx64 (char*,int,int ,int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_4__*,char*,char*,int *,int ) ;
 scalar_t__ ScEnumCa (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int *) ;
 int SystemToLocal64 (int ) ;
 int UniToStru (char*,int ) ;
 int Zero (TYPE_2__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_4__*,char*) ;

UINT PsCAList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_HUB_ENUM_CA t;


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


 ret = ScEnumCa(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  UINT i;
  CT *ct = CtNewStandard();

  for (i = 0;i < t.NumCa;i++)
  {
   wchar_t tmp[MAX_SIZE];
   wchar_t tmp2[64];
   RPC_HUB_ENUM_CA_ITEM *e = &t.Ca[i];

   GetDateStrEx64(tmp, sizeof(tmp), SystemToLocal64(e->Expires), ((void*)0));

   UniToStru(tmp2, e->Key);

   CtInsert(ct, _UU("CMD_CAList_COLUMN_ID"), tmp2);
   CtInsert(ct, _UU("CM_CERT_COLUMN_1"), e->SubjectName);
   CtInsert(ct, _UU("CM_CERT_COLUMN_2"), e->IssuerName);
   CtInsert(ct, _UU("CM_CERT_COLUMN_3"), tmp);

   if (i != (t.NumCa - 1))
   {
    CtInsert(ct, L"---", L"---");
   }
  }

  CtFree(ct, c);
 }

 FreeRpcHubEnumCa(&t);

 FreeParamValueList(o);

 return 0;
}
