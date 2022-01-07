
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {char* member_0; int * member_4; int member_3; int * member_2; int member_1; } ;
struct TYPE_13__ {int RemoteClient; } ;
struct TYPE_12__ {TYPE_2__* ClientOption; TYPE_1__* ClientAuth; scalar_t__ RetryOnServerCert; scalar_t__ CheckServerCert; int * ServerCert; int * AccountName; } ;
struct TYPE_11__ {scalar_t__ ProxyType; scalar_t__ NoUdpAcceleration; scalar_t__ DisableQoS; scalar_t__ NoRoutingTracking; scalar_t__ RequireMonitorMode; scalar_t__ RequireBridgeRoutingMode; scalar_t__ UseCompress; scalar_t__ UseEncrypt; scalar_t__ HalfConnection; int ConnectionDisconnectSpan; int AdditionalConnectionInterval; int MaxConnection; int DeviceName; int ProxyUsername; int ProxyPort; int ProxyName; int HubName; int Port; int Hostname; int * AccountName; } ;
struct TYPE_10__ {scalar_t__ AuthType; int * ClientX; int Username; } ;
typedef TYPE_3__ RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_4__ PC ;
typedef TYPE_5__ PARAM ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 scalar_t__ CLIENT_AUTHTYPE_CERT ;
 scalar_t__ CcGetAccount (int ,TYPE_3__*) ;
 int CiFreeClientGetAccount (TYPE_3__*) ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetAllNameFromX (int *,int,int *) ;
 int * GetClientAuthTypeStr (scalar_t__) ;
 int * GetParamUniStr (int *,char*) ;
 int * GetProxyTypeStr (scalar_t__) ;
 int MAX_SIZE ;
 scalar_t__ PROXY_DIRECT ;
 int * ParseCommandList (int *,char*,int *,TYPE_5__*,int) ;
 int StrToUni (int *,int,int ) ;
 int UniStrCpy (int *,int,int *) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_3__*,int) ;
 int * _UU (char*) ;

UINT PcAccountGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_ACCOUNT t;

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));
 UniStrCpy(t.AccountName, sizeof(t.AccountName), GetParamUniStr(o, "[name]"));

 ret = CcGetAccount(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {

  wchar_t tmp[MAX_SIZE];

  CT *ct = CtNewStandard();


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_NAME"), t.ClientOption->AccountName);


  StrToUni(tmp, sizeof(tmp), t.ClientOption->Hostname);
  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_HOSTNAME"), tmp);


  UniToStru(tmp, t.ClientOption->Port);
  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_PORT"), tmp);


  StrToUni(tmp, sizeof(tmp), t.ClientOption->HubName);
  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_HUBNAME"), tmp);


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_PROXY_TYPE"), GetProxyTypeStr(t.ClientOption->ProxyType));

  if (t.ClientOption->ProxyType != PROXY_DIRECT)
  {

   StrToUni(tmp, sizeof(tmp), t.ClientOption->ProxyName);
   CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_PROXY_HOSTNAME"), tmp);


   UniToStru(tmp, t.ClientOption->ProxyPort);
   CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_PROXY_PORT"), tmp);


   StrToUni(tmp, sizeof(tmp), t.ClientOption->ProxyUsername);
   CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_PROXY_USERNAME"), tmp);
  }


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_SERVER_CERT_USE"),
   t.CheckServerCert ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));


  if (t.ServerCert != ((void*)0))
  {
   GetAllNameFromX(tmp, sizeof(tmp), t.ServerCert);
   CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_SERVER_CERT_NAME"), tmp);
  }

  if (t.CheckServerCert)
  {
   CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_RETRY_ON_SERVER_CERT"),
    t.RetryOnServerCert ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));
  }


  StrToUni(tmp, sizeof(tmp), t.ClientOption->DeviceName);
  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_DEVICE_NAME"), tmp);


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_AUTH_TYPE"), GetClientAuthTypeStr(t.ClientAuth->AuthType));


  StrToUni(tmp, sizeof(tmp), t.ClientAuth->Username);
  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_AUTH_USERNAME"), tmp);

  if (t.ClientAuth->AuthType == CLIENT_AUTHTYPE_CERT)
  {
   if (t.ClientAuth->ClientX != ((void*)0))
   {

    GetAllNameFromX(tmp, sizeof(tmp), t.ClientAuth->ClientX);
    CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_AUTH_CERT_NAME"), tmp);
   }
  }


  UniToStru(tmp, t.ClientOption->MaxConnection);
  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_NUMTCP"), tmp);


  UniToStru(tmp, t.ClientOption->AdditionalConnectionInterval);
  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_TCP_INTERVAL"), tmp);


  if (t.ClientOption->ConnectionDisconnectSpan != 0)
  {
   UniToStru(tmp, t.ClientOption->ConnectionDisconnectSpan);
  }
  else
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("CMD_MSG_INFINITE"));
  }
  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_TCP_TTL"), tmp);


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_TCP_HALF"),
   t.ClientOption->HalfConnection ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_ENCRYPT"),
   t.ClientOption->UseEncrypt ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_COMPRESS"),
   t.ClientOption->UseCompress ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_BRIDGE_ROUTER"),
   t.ClientOption->RequireBridgeRoutingMode ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_MONITOR"),
   t.ClientOption->RequireMonitorMode ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_NO_TRACKING"),
   t.ClientOption->NoRoutingTracking ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_QOS_DISABLE"),
   t.ClientOption->DisableQoS ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));


  CtInsert(ct, _UU("CMD_ACCOUNT_COLUMN_DISABLEUDP"),
   t.ClientOption->NoUdpAcceleration ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));

  CtFree(ct, c);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }

 CiFreeClientGetAccount(&t);


 FreeParamValueList(o);

 return ret;
}
