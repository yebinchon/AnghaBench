
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
struct TYPE_6__ {int Rpc; } ;
struct TYPE_5__ {scalar_t__ SaveType; int Port; int Hostname; } ;
typedef TYPE_1__ SYSLOG_SETTING ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int ,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int * GetSyslogSettingName (scalar_t__) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ SYSLOG_NONE ;
 scalar_t__ ScGetSysLog (int ,TYPE_1__*) ;
 int StrToUni (int *,int,int ) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;

UINT PsSyslogGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 SYSLOG_SETTING t;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScGetSysLog(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  wchar_t tmp[MAX_SIZE];
  CT *ct = CtNewStandard();

  CtInsert(ct, _UU("CMD_SyslogGet_COLUMN_1"), GetSyslogSettingName(t.SaveType));

  if (t.SaveType != SYSLOG_NONE)
  {
   StrToUni(tmp, sizeof(tmp), t.Hostname);
   CtInsert(ct, _UU("CMD_SyslogGet_COLUMN_2"), tmp);

   UniToStru(tmp, t.Port);
   CtInsert(ct, _UU("CMD_SyslogGet_COLUMN_3"), tmp);
  }

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
