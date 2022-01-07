
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int (* Write ) (TYPE_4__*,int *) ;} ;
struct TYPE_15__ {int * HubName; int Rpc; } ;
struct TYPE_13__ {int MaxSession; scalar_t__ NoEnum; } ;
struct TYPE_14__ {int HubType; scalar_t__ Online; TYPE_1__ HubOption; int HubName; } ;
typedef TYPE_2__ RPC_CREATE_HUB ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CtFree (int *,TYPE_4__*) ;
 int CtInsert (int *,int *,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int * GetHubTypeStr (int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_4__*,char*,int *,int *,int ) ;
 scalar_t__ ScGetHub (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int *) ;
 int UniFormat (int *,int,int *,int *) ;
 int UniStrCpy (int *,int,int *) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_2__*,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_4__*,int *) ;
 int stub2 (TYPE_4__*,int *) ;

UINT PsOptionsGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CREATE_HUB t;


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


 ret = ScGetHub(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct;
  wchar_t tmp[MAX_SIZE];

  UniFormat(tmp, sizeof(tmp), _UU("CMD_OptionsGet_TITLE"), ps->HubName);
  c->Write(c, tmp);


  ct = CtNewStandard();

  CtInsert(ct, _UU("CMD_OptionsGet_ENUM"),
   t.HubOption.NoEnum ? _UU("CMD_MSG_DENY") : _UU("CMD_MSG_ALLOW"));

  if (t.HubOption.MaxSession == 0)
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("CMD_MSG_INFINITE"));
  }
  else
  {
   UniToStru(tmp, t.HubOption.MaxSession);
  }
  CtInsert(ct, _UU("CMD_OptionsGet_MAXSESSIONS"), tmp);

  CtInsert(ct, _UU("CMD_OptionsGet_STATUS"), t.Online ? _UU("SM_HUB_ONLINE") : _UU("SM_HUB_OFFLINE"));

  CtInsert(ct, _UU("CMD_OptionsGet_TYPE"), GetHubTypeStr(t.HubType));

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
