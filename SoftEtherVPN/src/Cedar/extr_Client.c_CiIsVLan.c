
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Name; } ;
typedef TYPE_1__ UNIX_VLAN ;
typedef size_t UINT ;
struct TYPE_9__ {int UnixVLanList; } ;
struct TYPE_8__ {size_t NumTokens; int * Token; } ;
typedef TYPE_2__ TOKEN_LIST ;
typedef TYPE_3__ CLIENT ;


 int FreeToken (TYPE_2__*) ;
 scalar_t__ LIST_DATA (int ,size_t) ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 TYPE_2__* MsEnumNetworkAdapters (int ,int ) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int UnlockList (int ) ;
 int VLAN_ADAPTER_NAME ;
 int VLAN_ADAPTER_NAME_OLD ;

bool CiIsVLan(CLIENT *c, char *name)
{

 if (c == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }
 {
  UNIX_VLAN *v;
  UINT i;
  bool ret = 0;

  LockList(c->UnixVLanList);
  {
   for (i = 0;i < LIST_NUM(c->UnixVLanList);i++)
   {
    v = (UNIX_VLAN *)LIST_DATA(c->UnixVLanList, i);
    if (StrCmpi(v->Name, name) == 0)
    {
     ret = 1;
    }
   }
  }
  UnlockList(c->UnixVLanList);

  return ret;
 }

}
