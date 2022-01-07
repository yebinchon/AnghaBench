
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int OpenVPNObfuscationMask; int OpenVPNObfuscation; int OpenVPNPortList; int EnableSSTP; int EnableOpenVPN; } ;
typedef int PACK ;
typedef TYPE_1__ OPENVPN_SSTP_CONFIG ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutOpenVpnSstpConfig(PACK *p, OPENVPN_SSTP_CONFIG *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddBool(p, "EnableOpenVPN", t->EnableOpenVPN);
 PackAddBool(p, "EnableSSTP", t->EnableSSTP);
 PackAddStr(p, "OpenVPNPortList", t->OpenVPNPortList);
 PackAddBool(p, "OpenVPNObfuscation", t->OpenVPNObfuscation);
 PackAddStr(p, "OpenVPNObfuscationMask", t->OpenVPNObfuscationMask);
}
