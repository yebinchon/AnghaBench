
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char wchar_t ;
typedef int v2 ;
typedef int v1 ;
typedef int tmp8 ;
typedef int tmp7 ;
typedef int tmp6 ;
typedef int tmp4 ;
typedef int tmp2 ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_15__ {int Rpc; int * HubName; } ;
struct TYPE_14__ {scalar_t__ NumItem; TYPE_1__* Items; int HubName; } ;
struct TYPE_13__ {int Protocol; int TcpStatus; int SendSize; int RecvSize; int LastCommTime; int CreatedTime; int DestPort; int DestHost; int SrcPort; int SrcHost; int Id; } ;
typedef TYPE_1__ RPC_ENUM_NAT_ITEM ;
typedef TYPE_2__ RPC_ENUM_NAT ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CtFreeEx (int *,TYPE_4__*,int) ;
 int CtInsert (int *,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int CtInsertColumn (int *,char*,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumNat (TYPE_2__*) ;
 int GetDateTimeStrEx64 (char*,int,int ,int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_4__*,char*,char*,int *,int ) ;
 scalar_t__ ScEnumNAT (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (char*,int,int ) ;
 int SystemToLocal64 (int ) ;
 int ToStr3 (char*,int,int ) ;
 int UniFormat (char*,int,char*,char*,char*) ;
 int UniToStru (char*,int ) ;
 int Zero (TYPE_2__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_4__*,char*) ;

UINT PsNatTable(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_NAT t;


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


 ret = ScEnumNAT(ps->Rpc, &t);

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

  CtInsertColumn(ct, _UU("NM_NAT_ID"), 0);
  CtInsertColumn(ct, _UU("NM_NAT_PROTOCOL"), 0);
  CtInsertColumn(ct, _UU("NM_NAT_SRC_HOST"), 0);
  CtInsertColumn(ct, _UU("NM_NAT_SRC_PORT"), 0);
  CtInsertColumn(ct, _UU("NM_NAT_DST_HOST"), 0);
  CtInsertColumn(ct, _UU("NM_NAT_DST_PORT"), 0);
  CtInsertColumn(ct, _UU("NM_NAT_CREATED"), 0);
  CtInsertColumn(ct, _UU("NM_NAT_LAST_COMM"), 0);
  CtInsertColumn(ct, _UU("NM_NAT_SIZE"), 0);
  CtInsertColumn(ct, _UU("NM_NAT_TCP_STATUS"), 0);

  for (i = 0;i < t.NumItem;i++)
  {
   RPC_ENUM_NAT_ITEM *e = &t.Items[i];
   wchar_t tmp0[MAX_SIZE];
   wchar_t *tmp1 = L"";
   wchar_t tmp2[MAX_SIZE];
   wchar_t tmp3[MAX_SIZE];
   wchar_t tmp4[MAX_SIZE];
   wchar_t tmp5[MAX_SIZE];
   wchar_t tmp6[MAX_SIZE];
   wchar_t tmp7[MAX_SIZE];
   wchar_t tmp8[MAX_SIZE];
   wchar_t *tmp9 = L"";
   char v1[128], v2[128];


   UniToStru(tmp0, e->Id);


   switch (e->Protocol)
   {
   case 134:
    tmp1 = _UU("NM_NAT_PROTO_TCP");
    break;
   case 128:
    tmp1 = _UU("NM_NAT_PROTO_UDP");
    break;
   case 136:
    tmp1 = _UU("NM_NAT_PROTO_DNS");
    break;
   case 135:
    tmp1 = _UU("NM_NAT_PROTO_ICMP");
    break;
   }


   StrToUni(tmp2, sizeof(tmp2), e->SrcHost);


   UniToStru(tmp3, e->SrcPort);


   StrToUni(tmp4, sizeof(tmp4), e->DestHost);


   UniToStru(tmp5, e->DestPort);


   GetDateTimeStrEx64(tmp6, sizeof(tmp6), SystemToLocal64(e->CreatedTime), ((void*)0));


   GetDateTimeStrEx64(tmp7, sizeof(tmp7), SystemToLocal64(e->LastCommTime), ((void*)0));


   ToStr3(v1, sizeof(v1), e->RecvSize);
   ToStr3(v2, sizeof(v2), e->SendSize);
   UniFormat(tmp8, sizeof(tmp8), L"%S / %S", v1, v2);


   if (e->Protocol == 134)
   {
    switch (e->TcpStatus)
    {
    case 132:
     tmp9 = _UU("NAT_TCP_CONNECTING");
     break;
    case 130:
     tmp9 = _UU("NAT_TCP_SEND_RESET");
     break;
    case 133:
     tmp9 = _UU("NAT_TCP_CONNECTED");
     break;
    case 131:
     tmp9 = _UU("NAT_TCP_ESTABLISHED");
     break;
    case 129:
     tmp9 = _UU("NAT_TCP_WAIT_DISCONNECT");
     break;
    }
   }

   CtInsert(ct,
    tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9);
  }

  CtFreeEx(ct, c, 1);
 }

 FreeRpcEnumNat(&t);

 FreeParamValueList(o);

 return 0;
}
