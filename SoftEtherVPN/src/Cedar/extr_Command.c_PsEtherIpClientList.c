
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int username ;
typedef int t ;
typedef int id ;
typedef int hubname ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int UserName; int HubName; int Id; } ;
struct TYPE_8__ {int Rpc; } ;
struct TYPE_7__ {scalar_t__ NumItem; TYPE_3__* IdList; } ;
typedef TYPE_1__ RPC_ENUM_ETHERIP_ID ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef TYPE_3__ ETHERIP_ID ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumEtherIpId (TYPE_1__*) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScEnumEtherIpId (int ,TYPE_1__*) ;
 int StrToUni (int *,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;

UINT PsEtherIpClientList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_ETHERIP_ID t;
 UINT i;
 CT *b;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScEnumEtherIpId(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  b = CtNew();

  CtInsertColumn(b, _UU("SM_ETHERIP_COLUMN_0"), 0);
  CtInsertColumn(b, _UU("SM_ETHERIP_COLUMN_1"), 0);
  CtInsertColumn(b, _UU("SM_ETHERIP_COLUMN_2"), 0);

  for (i = 0;i < t.NumItem;i++)
  {
   ETHERIP_ID *d = &t.IdList[i];
   wchar_t id[MAX_SIZE], hubname[MAX_SIZE], username[MAX_SIZE];

   StrToUni(id, sizeof(id), d->Id);
   StrToUni(hubname, sizeof(hubname), d->HubName);
   StrToUni(username, sizeof(username), d->UserName);

   CtInsert(b, id, hubname, username);
  }

  CtFree(b, c);

  FreeRpcEnumEtherIpId(&t);
 }

 FreeParamValueList(o);

 return 0;
}
