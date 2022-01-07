
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int NicDownOnDisconnect; } ;
struct TYPE_6__ {int RemoteClient; } ;
typedef TYPE_1__ PC ;
typedef int LIST ;
typedef int CONSOLE ;
typedef TYPE_2__ CLIENT_CONFIG ;


 scalar_t__ CcGetClientConfig (int ,TYPE_2__*) ;
 scalar_t__ CcSetClientConfig (int ,TYPE_2__*) ;
 int CmdPrintError (int *,scalar_t__) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 int Zero (TYPE_2__*,int) ;

UINT PcTunDownOnDisconnectEnable(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
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

  t.NicDownOnDisconnect = 1;
  ret = CcSetClientConfig(pc->RemoteClient, &t);
 }

 if (ret == ERR_NO_ERROR)
 {

 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
