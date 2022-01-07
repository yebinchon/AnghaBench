
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int RemoteClient; } ;
struct TYPE_5__ {int OsType; int ProcessId; int ClientBuildInfoString; int ClientVersionString; int ClientProductName; } ;
typedef TYPE_1__ RPC_CLIENT_VERSION ;
typedef TYPE_2__ PC ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 scalar_t__ CcGetClientVersion (int ,TYPE_1__*) ;
 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int ,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int MAX_SIZE ;
 int OsTypeToStr (int ) ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 int StrToUni (int *,int,int ) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;

UINT PcVersionGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_VERSION t;


 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 ret = CcGetClientVersion(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {
  wchar_t tmp[MAX_SIZE];
  CT *ct;


  ct = CtNewStandard();

  StrToUni(tmp, sizeof(tmp), t.ClientProductName);
  CtInsert(ct, _UU("CMD_VersionGet_1"), tmp);

  StrToUni(tmp, sizeof(tmp), t.ClientVersionString);
  CtInsert(ct, _UU("CMD_VersionGet_2"), tmp);

  StrToUni(tmp, sizeof(tmp), t.ClientBuildInfoString);
  CtInsert(ct, _UU("CMD_VersionGet_3"), tmp);

  UniToStru(tmp, t.ProcessId);
  CtInsert(ct, _UU("CMD_VersionGet_4"), tmp);

  StrToUni(tmp, sizeof(tmp), OsTypeToStr(t.OsType));
  CtInsert(ct, _UU("CMD_VersionGet_5"), tmp);

  CtFree(ct, c);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
