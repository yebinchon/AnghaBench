
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef char wchar_t ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {int (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_14__ {int Rpc; int * HubName; } ;
struct TYPE_12__ {int* PacketLogConfig; int PacketLogSwitchType; scalar_t__ SavePacketLog; int SecurityLogSwitchType; scalar_t__ SaveSecurityLog; } ;
struct TYPE_13__ {TYPE_1__ LogSetting; int HubName; } ;
typedef TYPE_2__ RPC_HUB_LOG ;
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
 char* GetLogSwitchStr (int ) ;
 char* GetPacketLogNameStr (scalar_t__) ;



 int * ParseCommandList (TYPE_4__*,char*,char*,int *,int ) ;
 scalar_t__ ScGetHubLog (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int *) ;
 int Zero (TYPE_2__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_4__*,char*) ;

UINT PsLogGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_HUB_LOG t;


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


 ret = ScGetHubLog(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct = CtNewStandard();

  CtInsert(ct, _UU("CMD_Log_SecurityLog"),
   t.LogSetting.SaveSecurityLog ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));
  if (t.LogSetting.SaveSecurityLog)
  {
   CtInsert(ct, _UU("CMD_Log_SwitchType"), GetLogSwitchStr(t.LogSetting.SecurityLogSwitchType));
  }

  CtInsert(ct, L"", L"");

  CtInsert(ct, _UU("CMD_Log_PacketLog"),
   t.LogSetting.SavePacketLog ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));
  if (t.LogSetting.SavePacketLog)
  {
   UINT i;

   CtInsert(ct, _UU("CMD_Log_SwitchType"), GetLogSwitchStr(t.LogSetting.PacketLogSwitchType));

   for (i = 0;i <= 7;i++)
   {
    wchar_t *tmp = ((void*)0);

    switch (t.LogSetting.PacketLogConfig[i])
    {
    case 128:
     tmp = _UU("D_SM_LOG@B_PACKET_0_0");
     break;

    case 129:
     tmp = _UU("D_SM_LOG@B_PACKET_0_1");
     break;

    case 130:
     tmp = _UU("D_SM_LOG@B_PACKET_0_2");
     break;
    }

    CtInsert(ct, GetPacketLogNameStr(i),
     tmp);
   }
  }

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
