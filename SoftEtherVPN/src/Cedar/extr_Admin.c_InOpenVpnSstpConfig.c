
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int OpenVPNObfuscationMask; void* OpenVPNObfuscation; int OpenVPNPortList; void* EnableSSTP; void* EnableOpenVPN; } ;
typedef int PACK ;
typedef TYPE_1__ OPENVPN_SSTP_CONFIG ;


 void* PackGetBool (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InOpenVpnSstpConfig(OPENVPN_SSTP_CONFIG *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(OPENVPN_SSTP_CONFIG));

 t->EnableOpenVPN = PackGetBool(p, "EnableOpenVPN");
 t->EnableSSTP = PackGetBool(p, "EnableSSTP");
 PackGetStr(p, "OpenVPNPortList", t->OpenVPNPortList, sizeof(t->OpenVPNPortList));
 t->OpenVPNObfuscation= PackGetBool(p, "OpenVPNObfuscation");
 PackGetStr(p, "OpenVPNObfuscationMask", t->OpenVPNObfuscationMask, sizeof(t->OpenVPNObfuscationMask));
}
