
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp5 ;
typedef int tmp4 ;
typedef int tmp3 ;
typedef int tmp2 ;
typedef int tmp1 ;
typedef int t ;
typedef int str ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_15__ {int Rpc; int * HubName; } ;
struct TYPE_14__ {scalar_t__ NumItem; TYPE_1__* Items; int HubName; } ;
struct TYPE_13__ {char* Hostname; int IpAddress; int MacAddress; int ExpireTime; int LeasedTime; int Id; } ;
typedef TYPE_1__ RPC_ENUM_DHCP_ITEM ;
typedef TYPE_2__ RPC_ENUM_DHCP ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CtFreeEx (int *,TYPE_4__*,int) ;
 int CtInsert (int *,int *,int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumDhcp (TYPE_2__*) ;
 int GetDateTimeStrEx64 (int *,int,int ,int *) ;
 int IPToStr32 (char*,int,int ) ;
 int MAX_SIZE ;
 int MacToStr (char*,int,int ) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,int *,int ) ;
 scalar_t__ ScEnumDHCP (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (int *,int,char*) ;
 int SystemToLocal64 (int ) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsDhcpTable(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_DHCP t;


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


 ret = ScEnumDHCP(ps->Rpc, &t);

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

  CtInsertColumn(ct, _UU("DHCP_DHCP_ID"), 0);
  CtInsertColumn(ct, _UU("DHCP_LEASED_TIME"), 0);
  CtInsertColumn(ct, _UU("DHCP_EXPIRE_TIME"), 0);
  CtInsertColumn(ct, _UU("DHCP_MAC_ADDRESS"), 0);
  CtInsertColumn(ct, _UU("DHCP_IP_ADDRESS"), 0);
  CtInsertColumn(ct, _UU("DHCP_HOSTNAME"), 0);

  for (i = 0;i < t.NumItem;i++)
  {
   RPC_ENUM_DHCP_ITEM *e = &t.Items[i];
   wchar_t tmp0[MAX_SIZE];
   wchar_t tmp1[MAX_SIZE];
   wchar_t tmp2[MAX_SIZE];
   wchar_t tmp3[MAX_SIZE];
   wchar_t tmp4[MAX_SIZE];
   wchar_t tmp5[MAX_SIZE];
   char str[MAX_SIZE];


   UniToStru(tmp0, e->Id);


   GetDateTimeStrEx64(tmp1, sizeof(tmp1), SystemToLocal64(e->LeasedTime), ((void*)0));
   GetDateTimeStrEx64(tmp2, sizeof(tmp2), SystemToLocal64(e->ExpireTime), ((void*)0));

   MacToStr(str, sizeof(str), e->MacAddress);
   StrToUni(tmp3, sizeof(tmp3), str);

   IPToStr32(str, sizeof(str), e->IpAddress);
   StrToUni(tmp4, sizeof(tmp4), str);

   StrToUni(tmp5, sizeof(tmp5), e->Hostname);

   CtInsert(ct,
    tmp0, tmp1, tmp2, tmp3, tmp4, tmp5);
  }

  CtFreeEx(ct, c, 1);
 }

 FreeRpcEnumDhcp(&t);

 FreeParamValueList(o);

 return 0;
}
