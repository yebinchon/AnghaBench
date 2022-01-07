
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp4 ;
typedef int tmp2 ;
typedef int tmp ;
typedef int t ;
typedef int ip_str ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int RemoteClient; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__** Items; } ;
struct TYPE_7__ {scalar_t__ Port; int Active; scalar_t__ Connected; int AccountName; int DeviceName; int HubName; int ProxyType; int ServerName; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_ACCOUNT_ITEM ;
typedef TYPE_2__ RPC_CLIENT_ENUM_ACCOUNT ;
typedef TYPE_3__ PC ;
typedef int LIST ;
typedef int IP ;
typedef int CT ;
typedef int CONSOLE ;


 scalar_t__ CcEnumAccount (int ,TYPE_2__*) ;
 int CiFreeClientEnumAccount (TYPE_2__*) ;
 int CmdPrintError (int *,scalar_t__) ;
 int CtFreeEx (int *,int *,int) ;
 int CtInsert (int *,int ,int ,int *,int *,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Format (char*,int,char*,int ) ;
 int FreeParamValueList (int *) ;
 int GetProtocolName (int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 int StartWith (int ,char*) ;
 int StrCpy (char*,int,int ) ;
 scalar_t__ StrToIP6 (int *,int ) ;
 int StrToUni (int *,int,int ) ;
 int UniFormat (int *,int,char*,char*,scalar_t__,...) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;

UINT PcAccountList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_ENUM_ACCOUNT t;


 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 ret = CcEnumAccount(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {
  UINT i;
  CT *ct;


  ct = CtNew();
  CtInsertColumn(ct, _UU("CM_ACCOUNT_COLUMN_1"), 0);
  CtInsertColumn(ct, _UU("CM_ACCOUNT_COLUMN_2"), 0);
  CtInsertColumn(ct, _UU("CM_ACCOUNT_COLUMN_3"), 0);
  CtInsertColumn(ct, _UU("CM_ACCOUNT_COLUMN_3_2"), 0);
  CtInsertColumn(ct, _UU("CM_ACCOUNT_COLUMN_4"), 0);

  for (i = 0;i < t.NumItem;i++)
  {
   RPC_CLIENT_ENUM_ACCOUNT_ITEM *e = t.Items[i];
   wchar_t tmp[MAX_SIZE];
   wchar_t tmp2[MAX_SIZE];
   wchar_t tmp4[MAX_SIZE];
   IP ip;
   char ip_str[MAX_SIZE];


   if (StrToIP6(&ip, e->ServerName) && StartWith(e->ServerName, "[") == 0)
   {
    Format(ip_str, sizeof(ip_str),
     "[%s]", e->ServerName);
   }
   else
   {
    StrCpy(ip_str, sizeof(ip_str), e->ServerName);
   }

   if (e->Port == 0)
   {

    UniFormat(tmp2, sizeof(tmp2), L"%S (%s)", ip_str, GetProtocolName(e->ProxyType));
   }
   else
   {

    UniFormat(tmp2, sizeof(tmp2), L"%S:%u (%s)", ip_str, e->Port, GetProtocolName(e->ProxyType));
   }


   StrToUni(tmp4, sizeof(tmp4), e->HubName);


   StrToUni(tmp, sizeof(tmp), e->DeviceName);

   CtInsert(ct,
    e->AccountName,
    e->Active == 0 ? _UU("CM_ACCOUNT_OFFLINE") :
    (e->Connected ? _UU("CM_ACCOUNT_ONLINE") : _UU("CM_ACCOUNT_CONNECTING")),
    tmp2, tmp4,
    tmp);
  }

  CtFreeEx(ct, c, 1);
 }

 CiFreeClientEnumAccount(&t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
