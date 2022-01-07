
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ver ;
typedef int t ;
typedef int name ;
typedef int mac ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int RemoteClient; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__** Items; } ;
struct TYPE_7__ {int Version; int MacAddress; scalar_t__ Enabled; int DeviceName; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_VLAN_ITEM ;
typedef TYPE_2__ RPC_CLIENT_ENUM_VLAN ;
typedef TYPE_3__ PC ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 scalar_t__ CcEnumVLan (int ,TYPE_2__*) ;
 int CiFreeClientEnumVLan (TYPE_2__*) ;
 int CmdPrintError (int *,scalar_t__) ;
 int CtFreeEx (int *,int *,int) ;
 int CtInsert (int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int *,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 int StrToUni (int *,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 int * _UU (char*) ;

UINT PcNicList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_ENUM_VLAN t;


 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 ret = CcEnumVLan(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {
  CT *ct;
  UINT i;


  ct = CtNew();
  CtInsertColumn(ct, _UU("CM_VLAN_COLUMN_1"), 0);
  CtInsertColumn(ct, _UU("CM_VLAN_COLUMN_2"), 0);
  CtInsertColumn(ct, _UU("CM_VLAN_COLUMN_3"), 0);
  CtInsertColumn(ct, _UU("CM_VLAN_COLUMN_4"), 0);

  for (i = 0;i < t.NumItem;i++)
  {
   wchar_t name[MAX_SIZE];
   wchar_t mac[MAX_SIZE];
   wchar_t ver[MAX_SIZE];
   wchar_t *status;
   RPC_CLIENT_ENUM_VLAN_ITEM *v = t.Items[i];


   StrToUni(name, sizeof(name), v->DeviceName);


   status = v->Enabled ? _UU("CM_VLAN_ENABLED") : _UU("CM_VLAN_DISABLED");


   StrToUni(mac, sizeof(mac), v->MacAddress);


   StrToUni(ver, sizeof(ver), v->Version);

   CtInsert(ct,
    name, status, mac, ver);
  }

  CtFreeEx(ct, c, 1);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }

 CiFreeClientEnumVLan(&t);


 FreeParamValueList(o);

 return ret;
}
