
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_14__ {int Rpc; int * HubName; } ;
struct TYPE_12__ {int NoEnum; } ;
struct TYPE_13__ {TYPE_1__ HubOption; int HubName; } ;
typedef TYPE_2__ RPC_CREATE_HUB ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,int *,int ) ;
 scalar_t__ ScGetHub (int ,TYPE_2__*) ;
 scalar_t__ ScSetHub (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int *) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsSetEnumDeny(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
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

 t.HubOption.NoEnum = 1;


 ret = ScSetHub(ps->Rpc, &t);
 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeParamValueList(o);

 return 0;
}
