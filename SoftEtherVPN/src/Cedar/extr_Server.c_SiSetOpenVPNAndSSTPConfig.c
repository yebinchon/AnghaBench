
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int OpenVPNObfuscationMask; int OpenVPNObfuscation; int OpenVPNPortList; int EnableOpenVPN; int EnableSSTP; } ;
struct TYPE_7__ {scalar_t__ ServerType; int DisableSSTPServer; int DisableOpenVPNServer; char* OpenVpnServerUdpPorts; int OpenVpnSstpConfigLock; int ListenIP; int * OpenVpnServerUdp; TYPE_1__* Cedar; } ;
struct TYPE_6__ {int OpenVPNObfuscationMask; int OpenVPNObfuscation; scalar_t__ Bridge; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ OPENVPN_SSTP_CONFIG ;


 int Lock (int ) ;
 int NormalizeIntListStr (char*,int,int ,int,char*) ;
 int OvsApplyUdpPortList (int *,char*,int *) ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;

void SiSetOpenVPNAndSSTPConfig(SERVER *s, OPENVPN_SSTP_CONFIG *c)
{

 if (s == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 Lock(s->OpenVpnSstpConfigLock);
 {

  if (s->Cedar->Bridge || s->ServerType != SERVER_TYPE_STANDALONE)
  {
   s->DisableSSTPServer = 1;
   s->DisableOpenVPNServer = 1;
  }
  else
  {
   s->DisableSSTPServer = !c->EnableSSTP;
   s->DisableOpenVPNServer = !c->EnableOpenVPN;
  }

  NormalizeIntListStr(s->OpenVpnServerUdpPorts, sizeof(s->OpenVpnServerUdpPorts),
   c->OpenVPNPortList, 1, ", ");

  s->Cedar->OpenVPNObfuscation = c->OpenVPNObfuscation;
  StrCpy(s->Cedar->OpenVPNObfuscationMask, sizeof(s->Cedar->OpenVPNObfuscationMask), c->OpenVPNObfuscationMask);


  if (s->OpenVpnServerUdp != ((void*)0))
  {
   if (s->DisableOpenVPNServer)
   {
    OvsApplyUdpPortList(s->OpenVpnServerUdp, "", ((void*)0));
   }
   else
   {
    OvsApplyUdpPortList(s->OpenVpnServerUdp, s->OpenVpnServerUdpPorts, &s->ListenIP);
   }
  }
 }
 Unlock(s->OpenVpnSstpConfigLock);
}
