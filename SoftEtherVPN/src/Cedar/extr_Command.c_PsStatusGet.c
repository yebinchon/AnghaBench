
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_13__ {int (* Write ) (TYPE_3__*,int *) ;} ;
struct TYPE_12__ {int Rpc; int * HubName; } ;
struct TYPE_11__ {scalar_t__ HubType; scalar_t__ LastLoginTime; scalar_t__ LastCommTime; scalar_t__ CreatedTime; int Traffic; int NumLogin; int NumIpTables; int NumMacTables; int NumGroups; int NumUsers; int NumAccessLists; int NumSessionsBridge; int NumSessionsClient; int NumSessions; scalar_t__ SecureNATEnabled; scalar_t__ Online; int HubName; } ;
typedef TYPE_1__ RPC_HUB_STATUS ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_3__ CONSOLE ;


 int CmdInsertTrafficInfo (int *,int *) ;
 int CmdPrintError (TYPE_3__*,scalar_t__) ;
 int * CopyStrToUni (int ) ;
 int CtFree (int *,TYPE_3__*) ;
 int CtInsert (int *,int *,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (int *) ;
 int FreeParamValueList (int *) ;
 int GetDateTimeStr64Uni (int *,int,int ) ;
 int * GetHubTypeStr (scalar_t__) ;
 scalar_t__ HUB_TYPE_STANDALONE ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_3__*,char*,int *,int *,int ) ;
 scalar_t__ ScGetHubStatus (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int SystemToLocal64 (scalar_t__) ;
 int UniStrCpy (int *,int,int *) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_3__*,int *) ;

UINT PsStatusGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_HUB_STATUS t;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));

 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);


 ret = ScGetHubStatus(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct = CtNewStandard();
  wchar_t *s;
  wchar_t tmp[MAX_SIZE];


  s = CopyStrToUni(t.HubName);
  CtInsert(ct, _UU("SM_HUB_STATUS_HUBNAME"), s);
  Free(s);


  CtInsert(ct, _UU("SM_HUB_STATUS_ONLINE"),
   t.Online ? _UU("SM_HUB_ONLINE") : _UU("SM_HUB_OFFLINE"));


  CtInsert(ct, _UU("SM_HUB_TYPE"),
   GetHubTypeStr(t.HubType));

  if (t.HubType == HUB_TYPE_STANDALONE)
  {

   CtInsert(ct, _UU("SM_HUB_SECURE_NAT"),
    t.SecureNATEnabled ? _UU("SM_HUB_SECURE_NAT_YES") : _UU("SM_HUB_SECURE_NAT_NO"));
  }


  UniToStru(tmp, t.NumSessions);
  CtInsert(ct, _UU("SM_HUB_NUM_SESSIONS"), tmp);

  if (t.NumSessionsClient != 0 || t.NumSessionsBridge != 0)
  {
   UniToStru(tmp, t.NumSessionsClient);
   CtInsert(ct, _UU("SM_HUB_NUM_SESSIONS_CLIENT"), tmp);
   UniToStru(tmp, t.NumSessionsBridge);
   CtInsert(ct, _UU("SM_HUB_NUM_SESSIONS_BRIDGE"), tmp);
  }

  UniToStru(tmp, t.NumAccessLists);
  CtInsert(ct, _UU("SM_HUB_NUM_ACCESSES"), tmp);

  UniToStru(tmp, t.NumUsers);
  CtInsert(ct, _UU("SM_HUB_NUM_USERS"), tmp);
  UniToStru(tmp, t.NumGroups);
  CtInsert(ct, _UU("SM_HUB_NUM_GROUPS"), tmp);

  UniToStru(tmp, t.NumMacTables);
  CtInsert(ct, _UU("SM_HUB_NUM_MAC_TABLES"), tmp);
  UniToStru(tmp, t.NumIpTables);
  CtInsert(ct, _UU("SM_HUB_NUM_IP_TABLES"), tmp);


  UniToStru(tmp, t.NumLogin);
  CtInsert(ct, _UU("SM_HUB_NUM_LOGIN"), tmp);

  if (t.LastLoginTime != 0)
  {
   GetDateTimeStr64Uni(tmp, sizeof(tmp), SystemToLocal64(t.LastLoginTime));
  }
  else
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("COMMON_UNKNOWN"));
  }
  CtInsert(ct, _UU("SM_HUB_LAST_LOGIN_TIME"), tmp);

  if (t.LastCommTime != 0)
  {
   GetDateTimeStr64Uni(tmp, sizeof(tmp), SystemToLocal64(t.LastCommTime));
  }
  else
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("COMMON_UNKNOWN"));
  }
  CtInsert(ct, _UU("SM_HUB_LAST_COMM_TIME"), tmp);

  if (t.CreatedTime != 0)
  {
   GetDateTimeStr64Uni(tmp, sizeof(tmp), SystemToLocal64(t.CreatedTime));
  }
  else
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("COMMON_UNKNOWN"));
  }
  CtInsert(ct, _UU("SM_HUB_CREATED_TIME"), tmp);


  CmdInsertTrafficInfo(ct, &t.Traffic);

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
