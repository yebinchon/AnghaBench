
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp6 ;
typedef int tmp5 ;
typedef int tmp4 ;
typedef int tmp3 ;
typedef int tmp2 ;
typedef int tmp1 ;
typedef int t ;
typedef int str ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {int (* Write ) (TYPE_5__*,int ) ;} ;
struct TYPE_18__ {char* member_0; int * member_4; int * member_3; int * member_2; int * member_1; } ;
struct TYPE_17__ {int Rpc; int * HubName; } ;
struct TYPE_16__ {scalar_t__ NumMacTable; TYPE_1__* MacTables; int HubName; } ;
struct TYPE_15__ {char* SessionName; scalar_t__ Key; scalar_t__ VlanId; int RemoteHostname; int UpdatedTime; int CreatedTime; int MacAddress; } ;
typedef TYPE_1__ RPC_ENUM_MAC_TABLE_ITEM ;
typedef TYPE_2__ RPC_ENUM_MAC_TABLE ;
typedef TYPE_3__ PS ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_5__ CONSOLE ;


 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CtFreeEx (int *,TYPE_5__*,int) ;
 int CtInsert (int *,int *,int *,int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumMacTable (TYPE_2__*) ;
 int GetDateTimeStr64Uni (int *,int,int ) ;
 char* GetParamStr (int *,char*) ;
 scalar_t__ IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int MacToStr (char*,int,int ) ;
 int * ParseCommandList (TYPE_5__*,char*,int *,TYPE_4__*,int) ;
 scalar_t__ ScEnumMacTable (int ,TYPE_2__*) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (int ,int,int *) ;
 scalar_t__ StrLen (int ) ;
 int StrToUni (int *,int,char*) ;
 int SystemToLocal64 (int ) ;
 int UniFormat (int *,int,int ,int ) ;
 int UniStrCpy (int *,int,int ) ;
 int UniToStru (int *,scalar_t__) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_5__*,int ) ;

UINT PsMacTable(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_MAC_TABLE t;
 UINT i;


 PARAM args[] =
 {

  {"[session_name]", ((void*)0), ((void*)0), ((void*)0), ((void*)0),}
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


 ret = ScEnumMacTable(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct = CtNew();
  char *session_name = GetParamStr(o, "[session_name]");

  if (IsEmptyStr(session_name))
  {
   session_name = ((void*)0);
  }

  CtInsertColumn(ct, _UU("CMD_ID"), 0);
  CtInsertColumn(ct, _UU("SM_MAC_COLUMN_1"), 0);
  CtInsertColumn(ct, _UU("SM_MAC_COLUMN_1A"), 0);
  CtInsertColumn(ct, _UU("SM_MAC_COLUMN_2"), 0);
  CtInsertColumn(ct, _UU("SM_MAC_COLUMN_3"), 0);
  CtInsertColumn(ct, _UU("SM_MAC_COLUMN_4"), 0);
  CtInsertColumn(ct, _UU("SM_MAC_COLUMN_5"), 0);

  for (i = 0;i < t.NumMacTable;i++)
  {
   char str[MAX_SIZE];
   wchar_t tmp0[128];
   wchar_t tmp1[MAX_SIZE];
   wchar_t tmp2[MAX_SIZE];
   wchar_t tmp3[MAX_SIZE];
   wchar_t tmp4[MAX_SIZE];
   wchar_t tmp5[MAX_SIZE];
   wchar_t tmp6[MAX_SIZE];

   RPC_ENUM_MAC_TABLE_ITEM *e = &t.MacTables[i];

   if (session_name == ((void*)0) || StrCmpi(e->SessionName, session_name) == 0)
   {
    UniToStru(tmp0, e->Key);

    StrToUni(tmp1, sizeof(tmp1), e->SessionName);

    MacToStr(str, sizeof(str), e->MacAddress);
    StrToUni(tmp2, sizeof(tmp2), str);

    GetDateTimeStr64Uni(tmp3, sizeof(tmp3), SystemToLocal64(e->CreatedTime));

    GetDateTimeStr64Uni(tmp4, sizeof(tmp4), SystemToLocal64(e->UpdatedTime));

    if (StrLen(e->RemoteHostname) == 0)
    {
     UniStrCpy(tmp5, sizeof(tmp5), _UU("SM_MACIP_LOCAL"));
    }
    else
    {
     UniFormat(tmp5, sizeof(tmp5), _UU("SM_MACIP_SERVER"), e->RemoteHostname);
    }

    UniToStru(tmp6, e->VlanId);
    if (e->VlanId == 0)
    {
     UniStrCpy(tmp6, sizeof(tmp6), _UU("CM_ST_NONE"));
    }

    CtInsert(ct,
     tmp0, tmp1, tmp6, tmp2, tmp3, tmp4, tmp5);
   }
  }

  CtFreeEx(ct, c, 1);
 }

 FreeRpcEnumMacTable(&t);

 FreeParamValueList(o);

 return 0;
}
