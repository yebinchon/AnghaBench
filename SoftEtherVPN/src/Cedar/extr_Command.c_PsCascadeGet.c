
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_24__ {char* AccountName; scalar_t__ ProxyType; scalar_t__ DisableQoS; scalar_t__ NoRoutingTracking; scalar_t__ RequireMonitorMode; scalar_t__ RequireBridgeRoutingMode; scalar_t__ UseCompress; scalar_t__ UseEncrypt; scalar_t__ HalfConnection; int ConnectionDisconnectSpan; int AdditionalConnectionInterval; int MaxConnection; int DeviceName; int ProxyUsername; int ProxyPort; int ProxyName; int HubName; int Port; int Hostname; } ;
struct TYPE_23__ {int (* Write ) (TYPE_5__*,char*) ;} ;
struct TYPE_22__ {char* member_0; char* member_2; int * member_4; int member_3; int member_1; } ;
struct TYPE_21__ {int Rpc; int * HubName; } ;
struct TYPE_20__ {int Policy; TYPE_9__* ClientOption; TYPE_1__* ClientAuth; int * ServerCert; scalar_t__ CheckServerCert; int HubName; } ;
struct TYPE_19__ {scalar_t__ AuthType; int * ClientX; int Username; } ;
typedef TYPE_2__ RPC_CREATE_LINK ;
typedef TYPE_3__ PS ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_5__ CONSOLE ;
typedef int CLIENT_OPTION ;


 scalar_t__ CLIENT_AUTHTYPE_CERT ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CmdPrompt ;
 int CtFree (int *,TYPE_5__*) ;
 int CtInsert (int *,char*,char*) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcCreateLink (TYPE_2__*) ;
 int GetAllNameFromX (char*,int,int *) ;
 char* GetClientAuthTypeStr (scalar_t__) ;
 char* GetParamUniStr (int *,char*) ;
 char* GetProxyTypeStr (scalar_t__) ;
 int MAX_SIZE ;
 scalar_t__ PROXY_DIRECT ;
 int * ParseCommandList (TYPE_5__*,char*,char*,TYPE_4__*,int) ;
 int PrintPolicy (TYPE_5__*,int *,int) ;
 scalar_t__ ScGetLink (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (char*,int,int ) ;
 int UniStrCpy (char*,int,char*) ;
 int UniToStru (char*,int ) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_9__* ZeroMalloc (int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_5__*,char*) ;
 int stub2 (TYPE_5__*,char*) ;
 int stub3 (TYPE_5__*,char*) ;

UINT PsCascadeGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CREATE_LINK t;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
 };


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);
 t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
 UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName),
  GetParamUniStr(o, "[name]"));


 ret = ScGetLink(ps->Rpc, &t);

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

  CtFree(ct, c);


  c->Write(c, L"");
  c->Write(c, _UU("CMD_CascadeGet_Policy"));
  PrintPolicy(c, &t.Policy, 1);
 }

 FreeRpcCreateLink(&t);

 FreeParamValueList(o);

 return 0;
}
