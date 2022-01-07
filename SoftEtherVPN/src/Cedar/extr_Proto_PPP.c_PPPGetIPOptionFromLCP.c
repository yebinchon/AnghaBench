
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int WinsServer2; int WinsServer1; int DnsServer2; int DnsServer1; int IpAddress; } ;
typedef int PPP_LCP ;
typedef TYPE_1__ PPP_IPOPTION ;


 int PPPGetIPAddressValueFromLCP (int *,int ,int *) ;
 int PPP_IPCP_OPTION_DNS1 ;
 int PPP_IPCP_OPTION_DNS2 ;
 int PPP_IPCP_OPTION_IP ;
 int PPP_IPCP_OPTION_WINS1 ;
 int PPP_IPCP_OPTION_WINS2 ;
 int Zero (TYPE_1__*,int) ;

bool PPPGetIPOptionFromLCP(PPP_IPOPTION *o, PPP_LCP *c)
{
 bool ret;

 if (c == ((void*)0) || o == ((void*)0))
 {
  return 0;
 }

 Zero(o, sizeof(PPP_IPOPTION));

 ret = PPPGetIPAddressValueFromLCP(c, PPP_IPCP_OPTION_IP, &o->IpAddress);

 PPPGetIPAddressValueFromLCP(c, PPP_IPCP_OPTION_DNS1, &o->DnsServer1);
 PPPGetIPAddressValueFromLCP(c, PPP_IPCP_OPTION_DNS2, &o->DnsServer2);
 PPPGetIPAddressValueFromLCP(c, PPP_IPCP_OPTION_WINS1, &o->WinsServer1);
 PPPGetIPAddressValueFromLCP(c, PPP_IPCP_OPTION_WINS2, &o->WinsServer2);

 return ret;
}
