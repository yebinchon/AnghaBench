
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POLICY ;
typedef int PACK ;


 int Access ;
 int ArpDhcpOnly ;
 int AutoDisconnect ;
 int CheckIP ;
 int CheckIPv6 ;
 int CheckMac ;
 int DHCPFilter ;
 int DHCPForce ;
 int DHCPNoServer ;
 int DHCPv6Filter ;
 int DHCPv6NoServer ;
 int FilterIPv4 ;
 int FilterIPv6 ;
 int FilterNonIP ;
 int FixPassword ;
 int MaxConnection ;
 int MaxDownload ;
 int MaxIP ;
 int MaxIPv6 ;
 int MaxMac ;
 int MaxUpload ;
 int MonitorPort ;
 int MultiLogins ;
 int NoBridge ;
 int NoBroadcastLimiter ;
 int NoIPv6DefaultRouterInRA ;
 int NoIPv6DefaultRouterInRAWhenIPv6 ;
 int NoQoS ;
 int NoRouting ;
 int NoRoutingV6 ;
 int NoSavePassword ;
 int NoServer ;
 int NoServerV6 ;
 int PACK_ADD_POLICY_BOOL (char*,int ) ;
 int PACK_ADD_POLICY_UINT (char*,int ) ;
 int PackAddBool (int *,char*,int) ;
 int PrivacyFilter ;
 int RAFilter ;
 int RSandRAFilter ;
 int TimeOut ;
 int VLanId ;

void PackAddPolicy(PACK *p, POLICY *y)
{

 if (p == ((void*)0) || y == ((void*)0))
 {
  return;
 }



 PACK_ADD_POLICY_BOOL("Access", Access);
 PACK_ADD_POLICY_BOOL("DHCPFilter", DHCPFilter);
 PACK_ADD_POLICY_BOOL("DHCPNoServer", DHCPNoServer);
 PACK_ADD_POLICY_BOOL("DHCPForce", DHCPForce);
 PACK_ADD_POLICY_BOOL("NoBridge", NoBridge);
 PACK_ADD_POLICY_BOOL("NoRouting", NoRouting);
 PACK_ADD_POLICY_BOOL("PrivacyFilter", PrivacyFilter);
 PACK_ADD_POLICY_BOOL("NoServer", NoServer);
 PACK_ADD_POLICY_BOOL("CheckMac", CheckMac);
 PACK_ADD_POLICY_BOOL("CheckIP", CheckIP);
 PACK_ADD_POLICY_BOOL("ArpDhcpOnly", ArpDhcpOnly);
 PACK_ADD_POLICY_BOOL("MonitorPort", MonitorPort);
 PACK_ADD_POLICY_BOOL("NoBroadcastLimiter", NoBroadcastLimiter);
 PACK_ADD_POLICY_BOOL("FixPassword", FixPassword);
 PACK_ADD_POLICY_BOOL("NoQoS", NoQoS);

 PACK_ADD_POLICY_BOOL("RSandRAFilter", RSandRAFilter);
 PACK_ADD_POLICY_BOOL("RAFilter", RAFilter);
 PACK_ADD_POLICY_BOOL("DHCPv6Filter", DHCPv6Filter);
 PACK_ADD_POLICY_BOOL("DHCPv6NoServer", DHCPv6NoServer);
 PACK_ADD_POLICY_BOOL("NoRoutingV6", NoRoutingV6);
 PACK_ADD_POLICY_BOOL("CheckIPv6", CheckIPv6);
 PACK_ADD_POLICY_BOOL("NoServerV6", NoServerV6);
 PACK_ADD_POLICY_BOOL("NoSavePassword", NoSavePassword);
 PACK_ADD_POLICY_BOOL("FilterIPv4", FilterIPv4);
 PACK_ADD_POLICY_BOOL("FilterIPv6", FilterIPv6);
 PACK_ADD_POLICY_BOOL("FilterNonIP", FilterNonIP);
 PACK_ADD_POLICY_BOOL("NoIPv6DefaultRouterInRA", NoIPv6DefaultRouterInRA);
 PACK_ADD_POLICY_BOOL("NoIPv6DefaultRouterInRAWhenIPv6", NoIPv6DefaultRouterInRAWhenIPv6);



 PACK_ADD_POLICY_UINT("MaxConnection", MaxConnection);
 PACK_ADD_POLICY_UINT("TimeOut", TimeOut);
 PACK_ADD_POLICY_UINT("MaxMac", MaxMac);
 PACK_ADD_POLICY_UINT("MaxIP", MaxIP);
 PACK_ADD_POLICY_UINT("MaxUpload", MaxUpload);
 PACK_ADD_POLICY_UINT("MaxDownload", MaxDownload);
 PACK_ADD_POLICY_UINT("MultiLogins", MultiLogins);

 PACK_ADD_POLICY_UINT("MaxIPv6", MaxIPv6);
 PACK_ADD_POLICY_UINT("AutoDisconnect", AutoDisconnect);
 PACK_ADD_POLICY_UINT("VLanId", VLanId);


 PackAddBool(p, "policy:Ver3", 1);
}
