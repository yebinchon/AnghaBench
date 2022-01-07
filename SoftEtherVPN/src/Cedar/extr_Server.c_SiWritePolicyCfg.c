
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int VLanId; int NoIPv6DefaultRouterInRAWhenIPv6; int NoIPv6DefaultRouterInRA; int FilterNonIP; int FilterIPv6; int FilterIPv4; int AutoDisconnect; int NoSavePassword; int MaxIPv6; int NoServerV6; int CheckIPv6; int NoRoutingV6; int DHCPv6NoServer; int DHCPv6Filter; int RAFilter; int RSandRAFilter; int NoQoS; int MultiLogins; int FixPassword; int MaxDownload; int MaxUpload; int MaxIP; int MaxMac; int TimeOut; int MaxConnection; int MonitorPort; int NoBroadcastLimiter; int NoServer; int PrivacyFilter; int ArpDhcpOnly; int CheckIP; int CheckMac; int NoRouting; int NoBridge; int DHCPForce; int DHCPNoServer; int DHCPFilter; int Access; } ;
typedef TYPE_1__ POLICY ;
typedef int FOLDER ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddInt (int *,char*,int ) ;

void SiWritePolicyCfg(FOLDER *f, POLICY *p, bool cascade_mode)
{

 if (f == ((void*)0) || p == ((void*)0))
 {
  return;
 }


 if (cascade_mode == 0)
 {
  CfgAddBool(f, "Access", p->Access);
 }

 CfgAddBool(f, "DHCPFilter", p->DHCPFilter);
 CfgAddBool(f, "DHCPNoServer", p->DHCPNoServer);
 CfgAddBool(f, "DHCPForce", p->DHCPForce);

 if (cascade_mode == 0)
 {
  CfgAddBool(f, "NoBridge", p->NoBridge);
  CfgAddBool(f, "NoRouting", p->NoRouting);
 }

 CfgAddBool(f, "CheckMac", p->CheckMac);
 CfgAddBool(f, "CheckIP", p->CheckIP);
 CfgAddBool(f, "ArpDhcpOnly", p->ArpDhcpOnly);

 if (cascade_mode == 0)
 {
  CfgAddBool(f, "PrivacyFilter", p->PrivacyFilter);
 }

 CfgAddBool(f, "NoServer", p->NoServer);
 CfgAddBool(f, "NoBroadcastLimiter", p->NoBroadcastLimiter);

 if (cascade_mode == 0)
 {
  CfgAddBool(f, "MonitorPort", p->MonitorPort);
  CfgAddInt(f, "MaxConnection", p->MaxConnection);
  CfgAddInt(f, "TimeOut", p->TimeOut);
 }

 CfgAddInt(f, "MaxMac", p->MaxMac);
 CfgAddInt(f, "MaxIP", p->MaxIP);
 CfgAddInt(f, "MaxUpload", p->MaxUpload);
 CfgAddInt(f, "MaxDownload", p->MaxDownload);

 if (cascade_mode == 0)
 {
  CfgAddBool(f, "FixPassword", p->FixPassword);
  CfgAddInt(f, "MultiLogins", p->MultiLogins);
  CfgAddBool(f, "NoQoS", p->NoQoS);
 }


 CfgAddBool(f, "RSandRAFilter", p->RSandRAFilter);
 CfgAddBool(f, "RAFilter", p->RAFilter);
 CfgAddBool(f, "DHCPv6Filter", p->DHCPv6Filter);
 CfgAddBool(f, "DHCPv6NoServer", p->DHCPv6NoServer);

 if (cascade_mode == 0)
 {
  CfgAddBool(f, "NoRoutingV6", p->NoRoutingV6);
 }

 CfgAddBool(f, "CheckIPv6", p->CheckIPv6);
 CfgAddBool(f, "NoServerV6", p->NoServerV6);
 CfgAddInt(f, "MaxIPv6", p->MaxIPv6);

 if (cascade_mode == 0)
 {
  CfgAddBool(f, "NoSavePassword", p->NoSavePassword);
  CfgAddInt(f, "AutoDisconnect", p->AutoDisconnect);
 }

 CfgAddBool(f, "FilterIPv4", p->FilterIPv4);
 CfgAddBool(f, "FilterIPv6", p->FilterIPv6);
 CfgAddBool(f, "FilterNonIP", p->FilterNonIP);
 CfgAddBool(f, "NoIPv6DefaultRouterInRA", p->NoIPv6DefaultRouterInRA);
 CfgAddBool(f, "NoIPv6DefaultRouterInRAWhenIPv6", p->NoIPv6DefaultRouterInRAWhenIPv6);
 CfgAddInt(f, "VLanId", p->VLanId);
}
