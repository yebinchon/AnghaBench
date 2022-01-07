
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
 int MsIsInfCatalogRequired () ;
 int StrCpy (int ,int,char*) ;
 scalar_t__ StrToMac (int*,int ) ;
 int Zero (TYPE_1__*,int) ;

void CiChangeAllVLanMacAddressIfCleared(CLIENT *c)
{
}
