
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int UseNat; int DhcpDomainName; int DhcpDnsServerAddress2; int DhcpDnsServerAddress; int DhcpGatewayAddress; } ;
typedef TYPE_1__ VH_OPTION ;
typedef int IP ;


 int StrCpy (int ,int,char*) ;
 int Zero (int *,int) ;

void NiClearUnsupportedVhOptionForDynamicHub(VH_OPTION *o, bool initial)
{

 if (o == ((void*)0))
 {
  return;
 }

 o->UseNat = 0;

 if (initial)
 {
  Zero(&o->DhcpGatewayAddress, sizeof(IP));
  Zero(&o->DhcpDnsServerAddress, sizeof(IP));
  Zero(&o->DhcpDnsServerAddress2, sizeof(IP));
  StrCpy(o->DhcpDomainName, sizeof(o->DhcpDomainName), "");
 }
}
