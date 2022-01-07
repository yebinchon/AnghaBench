
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp8 ;
typedef int tmp7 ;
typedef int tmp6 ;
typedef int tmp5 ;
typedef int tmp4 ;
typedef int tmp3 ;
typedef int tmp1 ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {int (* Write ) (TYPE_5__*,int *) ;} ;
struct TYPE_18__ {int Rpc; int * HubName; } ;
struct TYPE_17__ {scalar_t__ VLanId; int PacketNum; int PacketSize; scalar_t__ BridgeMode; scalar_t__ SecureNATMode; scalar_t__ LinkMode; int MaxNumTcp; int CurrentNumTcp; int Username; int Hostname; int RemoteHostname; scalar_t__ RemoteSession; int Name; } ;
struct TYPE_16__ {scalar_t__ ServerType; scalar_t__ NumSession; TYPE_2__* Sessions; int HubName; } ;
typedef TYPE_1__ RPC_SERVER_INFO ;
typedef TYPE_2__ RPC_ENUM_SESSION_ITEM ;
typedef TYPE_1__ RPC_ENUM_SESSION ;
typedef TYPE_4__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_5__ CONSOLE ;


 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CtFreeEx (int *,TYPE_5__*,int) ;
 int CtInsert (int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int *,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (int *) ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumSession (TYPE_1__*) ;
 int FreeRpcServerInfo (TYPE_1__*) ;
 int L3_USERNAME ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_5__*,char*,int *,int *,int ) ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 scalar_t__ ScEnumSession (int ,TYPE_1__*) ;
 scalar_t__ ScGetServerInfo (int ,TYPE_1__*) ;
 scalar_t__ StartWith (int ,int ) ;
 int StrCpy (int ,int,int *) ;
 scalar_t__ StrLen (int ) ;
 int StrToUni (int *,int,int ) ;
 int UniFormat (int *,int,char*,int ,...) ;
 int UniStrCpy (int *,int,int *) ;
 int UniToStr3 (int *,int,int ) ;
 int UniToStru (int *,scalar_t__) ;
 int Zero (TYPE_1__*,int) ;
 int * ZeroMalloc (int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_5__*,int *) ;

UINT PsSessionList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_SESSION t;
 UINT server_type = 0;

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

 {

  RPC_SERVER_INFO t;

  Zero(&t, sizeof(t));

  if (ScGetServerInfo(ps->Rpc, &t) == ERR_NO_ERROR)
  {
   server_type = t.ServerType;

   FreeRpcServerInfo(&t);
  }
 }

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);


 ret = ScEnumSession(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct = CtNew();
  UINT i;

  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_1"), 0);
  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_8"), 0);
  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_2"), 0);
  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_3"), 0);
  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_4"), 0);
  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_5"), 1);
  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_6"), 1);
  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_7"), 1);

  for (i = 0;i < t.NumSession;i++)
  {
   RPC_ENUM_SESSION_ITEM *e = &t.Sessions[i];
   wchar_t tmp1[MAX_SIZE];
   wchar_t *tmp2;
   wchar_t tmp3[MAX_SIZE];
   wchar_t tmp4[MAX_SIZE];
   wchar_t tmp5[MAX_SIZE];
   wchar_t tmp6[MAX_SIZE];
   wchar_t tmp7[MAX_SIZE];
   wchar_t tmp8[MAX_SIZE];
   bool free_tmp2 = 0;

   StrToUni(tmp1, sizeof(tmp1), e->Name);

   tmp2 = _UU("SM_SESS_NORMAL");
   if (server_type != SERVER_TYPE_STANDALONE)
   {
    if (e->RemoteSession)
    {
     tmp2 = ZeroMalloc(MAX_SIZE);
     UniFormat(tmp2, MAX_SIZE, _UU("SM_SESS_REMOTE"), e->RemoteHostname);
     free_tmp2 = 1;
    }
    else
    {
     if (StrLen(e->RemoteHostname) == 0)
     {
      tmp2 = _UU("SM_SESS_LOCAL");
     }
     else
     {
      tmp2 = ZeroMalloc(MAX_SIZE);
      UniFormat(tmp2, MAX_SIZE, _UU("SM_SESS_LOCAL_2"), e->RemoteHostname);
      free_tmp2 = 1;
     }
    }
   }
   if (e->LinkMode)
   {
    if (free_tmp2)
    {
     Free(tmp2);
     free_tmp2 = 0;
    }
    tmp2 = _UU("SM_SESS_LINK");
   }
   else if (e->SecureNATMode)
   {





    tmp2 = _UU("SM_SESS_SNAT");
   }

   StrToUni(tmp3, sizeof(tmp3), e->Username);

   StrToUni(tmp4, sizeof(tmp4), e->Hostname);
   if (e->LinkMode)
   {
    UniStrCpy(tmp4, sizeof(tmp4), _UU("SM_SESS_LINK_HOSTNAME"));
   }
   else if (e->SecureNATMode)
   {
    UniStrCpy(tmp4, sizeof(tmp4), _UU("SM_SESS_SNAT_HOSTNAME"));
   }
   else if (e->BridgeMode)
   {
    UniStrCpy(tmp4, sizeof(tmp4), _UU("SM_SESS_BRIDGE_HOSTNAME"));
   }
   else if (StartWith(e->Username, L3_USERNAME))
   {
    UniStrCpy(tmp4, sizeof(tmp4), _UU("SM_SESS_LAYER3_HOSTNAME"));
   }

   UniFormat(tmp5, sizeof(tmp5), L"%u / %u", e->CurrentNumTcp, e->MaxNumTcp);
   if (e->LinkMode)
   {
    UniStrCpy(tmp5, sizeof(tmp5), _UU("SM_SESS_LINK_TCP"));
   }
   else if (e->SecureNATMode)
   {
    UniStrCpy(tmp5, sizeof(tmp5), _UU("SM_SESS_SNAT_TCP"));
   }
   else if (e->BridgeMode)
   {
    UniStrCpy(tmp5, sizeof(tmp5), _UU("SM_SESS_BRIDGE_TCP"));
   }

   UniToStr3(tmp6, sizeof(tmp6), e->PacketSize);
   UniToStr3(tmp7, sizeof(tmp7), e->PacketNum);

   if (e->VLanId == 0)
   {
    UniStrCpy(tmp8, sizeof(tmp8), _UU("CM_ST_NO_VLAN"));
   }
   else
   {
    UniToStru(tmp8, e->VLanId);
   }

   CtInsert(ct, tmp1, tmp8, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7);

   if (free_tmp2)
   {
    Free(tmp2);
   }
  }


  CtFreeEx(ct, c, 1);
 }

 FreeRpcEnumSession(&t);

 FreeParamValueList(o);

 return 0;
}
