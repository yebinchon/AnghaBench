
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int EnableOpenVPN; int EnableSSTP; int OpenVPNObfuscationMask; int OpenVPNObfuscation; int OpenVPNPortList; } ;
struct TYPE_8__ {int DisableOpenVPNServer; int DisableSSTPServer; int OpenVpnSstpConfigLock; TYPE_1__* Cedar; int OpenVpnServerUdpPorts; } ;
struct TYPE_7__ {int OpenVPNObfuscationMask; int OpenVPNObfuscation; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ OPENVPN_SSTP_CONFIG ;


 int Lock (int ) ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int Zero (TYPE_3__*,int) ;

void SiGetOpenVPNAndSSTPConfig(SERVER *s, OPENVPN_SSTP_CONFIG *c)
{

 if (s == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 Zero(c, sizeof(OPENVPN_SSTP_CONFIG));

 Lock(s->OpenVpnSstpConfigLock);
 {
  if (s->DisableOpenVPNServer == 0)
  {
   c->EnableOpenVPN = 1;
  }

  if (s->DisableSSTPServer == 0)
  {
   c->EnableSSTP = 1;
  }

  StrCpy(c->OpenVPNPortList, sizeof(c->OpenVPNPortList), s->OpenVpnServerUdpPorts);

  c->OpenVPNObfuscation = s->Cedar->OpenVPNObfuscation;
  StrCpy(c->OpenVPNObfuscationMask, sizeof(c->OpenVPNObfuscationMask), s->Cedar->OpenVPNObfuscationMask);
 }
 Unlock(s->OpenVpnSstpConfigLock);
}
