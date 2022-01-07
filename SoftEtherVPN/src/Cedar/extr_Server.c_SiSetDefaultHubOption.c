
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NoIPv6DefaultRouterInRAWhenIPv6; int ManageOnlyPrivateIP; int ManageOnlyLocalUnicastIPv6; int NoMacAddressLog; int NoDhcpPacketLogOutsideHub; int RemoveDefGwOnDhcpForLocalhost; int FloodingSendQueueBufferQuota; int AccessListIncludeFileCacheLifetime; int VlanTypeId; scalar_t__ MaxSession; } ;
typedef TYPE_1__ HUB_OPTION ;


 int ACCESS_LIST_INCLUDE_FILE_CACHE_LIFETIME ;
 int DEFAULT_FLOODING_QUEUE_LENGTH ;
 int MAC_PROTO_TAGVLAN ;

void SiSetDefaultHubOption(HUB_OPTION *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 o->MaxSession = 0;
 o->VlanTypeId = MAC_PROTO_TAGVLAN;
 o->NoIPv6DefaultRouterInRAWhenIPv6 = 1;
 o->ManageOnlyPrivateIP = 1;
 o->ManageOnlyLocalUnicastIPv6 = 1;
 o->NoMacAddressLog = 1;
 o->NoDhcpPacketLogOutsideHub = 1;
 o->AccessListIncludeFileCacheLifetime = ACCESS_LIST_INCLUDE_FILE_CACHE_LIFETIME;
 o->RemoveDefGwOnDhcpForLocalhost = 1;
 o->FloodingSendQueueBufferQuota = DEFAULT_FLOODING_QUEUE_LENGTH;
}
