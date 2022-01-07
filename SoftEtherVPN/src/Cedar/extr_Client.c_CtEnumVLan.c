
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {char* Name; int MacAddress; int Enabled; } ;
typedef TYPE_2__ UNIX_VLAN ;
typedef size_t UINT ;
struct TYPE_17__ {int UnixVLanList; TYPE_1__* Cedar; } ;
struct TYPE_16__ {int NumItem; TYPE_4__** Items; } ;
struct TYPE_15__ {int Version; int DeviceName; int MacAddress; int Enabled; } ;
struct TYPE_14__ {size_t NumTokens; char** Token; } ;
struct TYPE_12__ {char* VerString; } ;
typedef TYPE_3__ TOKEN_LIST ;
typedef TYPE_4__ RPC_CLIENT_ENUM_VLAN_ITEM ;
typedef TYPE_5__ RPC_CLIENT_ENUM_VLAN ;
typedef TYPE_6__ CLIENT ;


 int BinToStr (int ,int,int ,int) ;
 int Free (char*) ;
 int FreeToken (TYPE_3__*) ;
 TYPE_2__* LIST_DATA (int ,size_t) ;
 int LIST_NUM (int ) ;
 int LockList (int ) ;
 TYPE_3__* MsEnumNetworkAdapters (int ,int ) ;
 char* MsGetDriverVersion (int ,int ) ;
 char* MsGetMacAddress (int ,int ) ;
 int MsIsVLanEnabled (int ) ;
 int StrCpy (int ,int,char*) ;
 int UnlockList (int ) ;
 int VLAN_ADAPTER_NAME ;
 int VLAN_ADAPTER_NAME_OLD ;
 int VLAN_ADAPTER_NAME_TAG ;
 int VLAN_ADAPTER_NAME_TAG_OLD ;
 void* ZeroMalloc (int) ;

bool CtEnumVLan(CLIENT *c, RPC_CLIENT_ENUM_VLAN *e)
{
 UINT i;
 TOKEN_LIST *t;

 if (c == ((void*)0) || e == ((void*)0))
 {
  return 0;
 }



 LockList(c->UnixVLanList);
 {
  e->NumItem = LIST_NUM(c->UnixVLanList);
  e->Items = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_VLAN_ITEM *) * e->NumItem);

  for (i = 0;i < e->NumItem;i++)
  {
   RPC_CLIENT_ENUM_VLAN_ITEM *item;
   UNIX_VLAN *v;

   v = LIST_DATA(c->UnixVLanList, i);
   e->Items[i] = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_VLAN_ITEM));
   item = e->Items[i];

   item->Enabled = v->Enabled;
   BinToStr(item->MacAddress, sizeof(item->MacAddress), v->MacAddress, 6);
   StrCpy(item->DeviceName, sizeof(item->DeviceName), v->Name);
   StrCpy(item->Version, sizeof(item->Version), c->Cedar->VerString);
  }
 }
 UnlockList(c->UnixVLanList);

 return 1;
}
