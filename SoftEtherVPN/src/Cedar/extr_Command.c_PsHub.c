
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
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int (* Write ) (TYPE_4__*,int *) ;} ;
struct TYPE_15__ {char* member_0; int * member_4; int * member_3; int * member_2; int * member_1; } ;
struct TYPE_14__ {int * HubName; int Rpc; } ;
struct TYPE_13__ {int HubName; } ;
typedef TYPE_1__ RPC_HUB_STATUS ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int * CopyStr (int ) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (int *) ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 int IsEmptyStr (int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScGetHubStatus (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int ) ;
 int UniFormat (int *,int,int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_4__*,int *) ;
 int stub2 (TYPE_4__*,int *) ;

UINT PsHub(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_HUB_STATUS t;

 PARAM args[] =
 {

  {"[name]", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 if (IsEmptyStr(GetParamStr(o, "[name]")) == 0)
 {
  wchar_t tmp[MAX_SIZE];
  Zero(&t, sizeof(t));


  StrCpy(t.HubName, sizeof(t.HubName), GetParamStr(o, "[name]"));


  ret = ScGetHubStatus(ps->Rpc, &t);

  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }


  if (ps->HubName != ((void*)0))
  {
   Free(ps->HubName);
  }
  ps->HubName = CopyStr(t.HubName);

  UniFormat(tmp, sizeof(tmp), _UU("CMD_Hub_Selected"), t.HubName);
  c->Write(c, tmp);
 }
 else
 {

  if (ps->HubName != ((void*)0))
  {
   c->Write(c, _UU("CMD_Hub_Unselected"));
   Free(ps->HubName);
  }
  ps->HubName = ((void*)0);
 }

 FreeParamValueList(o);

 return 0;
}
