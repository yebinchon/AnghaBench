
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int s9 ;
typedef int s8 ;
typedef int s7 ;
typedef int s10 ;
typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {int Rpc; } ;
struct TYPE_14__ {scalar_t__ NumHub; TYPE_4__* Hubs; } ;
struct TYPE_11__ {scalar_t__ UnicastCount; scalar_t__ BroadcastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastBytes; } ;
struct TYPE_10__ {scalar_t__ UnicastCount; scalar_t__ BroadcastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastBytes; } ;
struct TYPE_12__ {TYPE_2__ Send; TYPE_1__ Recv; } ;
struct TYPE_13__ {scalar_t__ LastLoginTime; scalar_t__ LastCommTime; int IsTrafficFilled; int HubType; scalar_t__ Online; int HubName; TYPE_3__ Traffic; int NumLogin; int NumIpTables; int NumMacTables; int NumSessions; int NumGroups; int NumUsers; } ;
typedef TYPE_4__ RPC_ENUM_HUB_ITEM ;
typedef TYPE_5__ RPC_ENUM_HUB ;
typedef TYPE_6__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFreeEx (int *,int *,int) ;
 int CtInsert (int *,int *,int ,int ,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumHub (TYPE_5__*) ;
 int GetDateTimeStr64Uni (int *,int,int ) ;
 int GetHubTypeStr (int ) ;
 int MAX_HUBNAME_LEN ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScEnumHub (int ,TYPE_5__*) ;
 int StrToUni (int *,int,int ) ;
 int SystemToLocal64 (scalar_t__) ;
 int UniStrCpy (int *,int,int ) ;
 int UniToStr3 (int *,int,scalar_t__) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_5__*,int) ;
 int _UU (char*) ;

UINT PsHubList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_HUB t;
 UINT i;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScEnumHub(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct = CtNew();

  CtInsertColumn(ct, _UU("SM_HUB_COLUMN_1"), 0);
  CtInsertColumn(ct, _UU("SM_HUB_COLUMN_2"), 0);
  CtInsertColumn(ct, _UU("SM_HUB_COLUMN_3"), 0);
  CtInsertColumn(ct, _UU("SM_HUB_COLUMN_4"), 0);
  CtInsertColumn(ct, _UU("SM_HUB_COLUMN_5"), 0);
  CtInsertColumn(ct, _UU("SM_HUB_COLUMN_6"), 0);
  CtInsertColumn(ct, _UU("SM_HUB_COLUMN_7"), 0);
  CtInsertColumn(ct, _UU("SM_HUB_COLUMN_8"), 0);
  CtInsertColumn(ct, _UU("SM_HUB_COLUMN_9"), 0);
  CtInsertColumn(ct, _UU("SM_HUB_COLUMN_10"), 0);
  CtInsertColumn(ct, _UU("SM_HUB_COLUMN_11"), 0);
  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_6"), 0);
  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_7"), 0);

  for (i = 0;i < t.NumHub;i++)
  {
   RPC_ENUM_HUB_ITEM *e = &t.Hubs[i];
   wchar_t name[MAX_HUBNAME_LEN + 1];
   wchar_t s1[64], s2[64], s3[64], s4[64], s5[64];
   wchar_t s6[64], s7[128], s8[128];
   wchar_t s9[64], s10[64];

   UniToStru(s1, e->NumUsers);
   UniToStru(s2, e->NumGroups);
   UniToStru(s3, e->NumSessions);
   UniToStru(s4, e->NumMacTables);
   UniToStru(s5, e->NumIpTables);

   UniToStru(s6, e->NumLogin);

   if (e->LastLoginTime != 0)
   {
    GetDateTimeStr64Uni(s7, sizeof(s7), SystemToLocal64(e->LastLoginTime));
   }
   else
   {
    UniStrCpy(s7, sizeof(s7), _UU("COMMON_UNKNOWN"));
   }

   if (e->LastCommTime != 0)
   {
    GetDateTimeStr64Uni(s8, sizeof(s8), SystemToLocal64(e->LastCommTime));
   }
   else
   {
    UniStrCpy(s8, sizeof(s8), _UU("COMMON_UNKNOWN"));
   }

   if (e->IsTrafficFilled == 0)
   {
    UniStrCpy(s9, sizeof(s9), _UU("CM_ST_NONE"));
    UniStrCpy(s10, sizeof(s10), _UU("CM_ST_NONE"));
   }
   else
   {
    UniToStr3(s9, sizeof(s9),
     e->Traffic.Recv.BroadcastBytes + e->Traffic.Recv.UnicastBytes +
     e->Traffic.Send.BroadcastBytes + e->Traffic.Send.UnicastBytes);

    UniToStr3(s10, sizeof(s10),
     e->Traffic.Recv.BroadcastCount + e->Traffic.Recv.UnicastCount +
     e->Traffic.Send.BroadcastCount + e->Traffic.Send.UnicastCount);
   }

   StrToUni(name, sizeof(name), e->HubName);

   CtInsert(ct,
    name,
    e->Online ? _UU("SM_HUB_ONLINE") : _UU("SM_HUB_OFFLINE"),
    GetHubTypeStr(e->HubType),
    s1, s2, s3, s4, s5, s6, s7, s8, s9, s10);
  }

  CtFreeEx(ct, c, 1);
 }

 FreeRpcEnumHub(&t);

 FreeParamValueList(o);

 return 0;
}
