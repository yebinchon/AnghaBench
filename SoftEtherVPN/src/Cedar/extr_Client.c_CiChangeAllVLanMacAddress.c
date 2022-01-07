
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int t ;
typedef int s ;
typedef size_t UINT ;
typedef int UCHAR ;
struct TYPE_9__ {char* DeviceName; int MacAddress; } ;
struct TYPE_8__ {size_t NumItem; int MacAddress; int DeviceName; TYPE_2__** Items; } ;
typedef TYPE_1__ RPC_CLIENT_SET_VLAN ;
typedef TYPE_2__ RPC_CLIENT_ENUM_VLAN_ITEM ;
typedef TYPE_1__ RPC_CLIENT_ENUM_VLAN ;
typedef int CLIENT ;


 int CiFreeClientEnumVLan (TYPE_1__*) ;
 scalar_t__ CtEnumVLan (int *,TYPE_1__*) ;
 int CtSetVLan (int *,TYPE_1__*) ;
 int GenMacAddress (int*) ;
 int MacToStr (int ,int,int*) ;
 int StrCpy (int ,int,char*) ;
 scalar_t__ StrToMac (int*,int ) ;
 int Zero (TYPE_1__*,int) ;

void CiChangeAllVLanMacAddress(CLIENT *c)
{
 RPC_CLIENT_ENUM_VLAN t;

 if (c == ((void*)0))
 {
  return;
 }

 Zero(&t, sizeof(t));
 if (CtEnumVLan(c, &t))
 {
  UINT i;

  for (i = 0;i < t.NumItem;i++)
  {
   RPC_CLIENT_ENUM_VLAN_ITEM *e = t.Items[i];
   UCHAR mac[6];

   if (StrToMac(mac, e->MacAddress) && ((mac[0] == 0x00 && mac[1] == 0xAC) || (mac[0] == 0x5E)))
   {
    char *name = e->DeviceName;
    RPC_CLIENT_SET_VLAN s;
    UCHAR mac[6];

    GenMacAddress(mac);

    Zero(&s, sizeof(s));
    StrCpy(s.DeviceName, sizeof(s.DeviceName), name);

    MacToStr(s.MacAddress, sizeof(s.MacAddress), mac);

    CtSetVLan(c, &s);
   }
  }

  CiFreeClientEnumVLan(&t);
 }
}
