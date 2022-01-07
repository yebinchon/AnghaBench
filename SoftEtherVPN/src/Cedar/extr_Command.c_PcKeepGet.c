
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ KeepConnectProtocol; scalar_t__ UseKeepConnect; int KeepConnectInterval; int KeepConnectPort; int KeepConnectHost; } ;
struct TYPE_5__ {int RemoteClient; } ;
typedef TYPE_1__ PC ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;
typedef TYPE_2__ CLIENT_CONFIG ;


 scalar_t__ CcGetClientConfig (int ,TYPE_2__*) ;
 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,char*,char*) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,char*,int *,int ) ;
 int StrToUni (char*,int,int ) ;
 int UniToStru (char*,int ) ;
 int Zero (TYPE_2__*,int) ;
 char* _UU (char*) ;

UINT PcKeepGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 CLIENT_CONFIG t;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 ret = CcGetClientConfig(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {
  wchar_t tmp[MAX_SIZE];
  CT *ct = CtNewStandard();

  StrToUni(tmp, sizeof(tmp), t.KeepConnectHost);
  CtInsert(ct, _UU("CMD_KeepGet_COLUMN_1"), tmp);

  UniToStru(tmp, t.KeepConnectPort);
  CtInsert(ct, _UU("CMD_KeepGet_COLUMN_2"), tmp);

  UniToStru(tmp, t.KeepConnectInterval);
  CtInsert(ct, _UU("CMD_KeepGet_COLUMN_3"), tmp);

  CtInsert(ct, _UU("CMD_KeepGet_COLUMN_4"),
   t.KeepConnectProtocol == 0 ? L"TCP/IP" : L"UDP/IP");

  CtInsert(ct, _UU("CMD_KeepGet_COLUMN_5"),
   t.UseKeepConnect ? _UU("SM_ACCESS_ENABLE") : _UU("SM_ACCESS_DISABLE"));

  CtFree(ct, c);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
