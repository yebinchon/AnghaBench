
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UDPPACKET ;
struct TYPE_8__ {int SendPacketList; TYPE_1__* Cedar; } ;
struct TYPE_7__ {int ObfuscationMode; int ClientPort; int ClientIp; int ServerPort; int ServerIp; } ;
struct TYPE_6__ {int OpenVPNObfuscationMask; } ;
typedef TYPE_2__ OPENVPN_SESSION ;
typedef TYPE_3__ OPENVPN_SERVER ;


 int Add (int ,int *) ;
 int Free (void*) ;
 int * NewUdpPacket (int *,int ,int *,int ,void*,scalar_t__) ;





 int OvsDataReverse (void*,scalar_t__) ;
 int OvsDataXorMask (void*,scalar_t__,int ,int ) ;
 int OvsDataXorPtrPos (void*,scalar_t__) ;
 int StrLen (int ) ;

void OvsSendPacketRawNow(OPENVPN_SERVER *s, OPENVPN_SESSION *se, void *data, UINT size)
{
 UDPPACKET *u;


 if (s == ((void*)0) || se == ((void*)0) || data == ((void*)0) || size == 0)
 {
  Free(data);
  return;
 }


 switch (se->ObfuscationMode)
 {
 case 132:
  break;
 case 129:
  OvsDataXorMask(data, size, s->Cedar->OpenVPNObfuscationMask, StrLen(s->Cedar->OpenVPNObfuscationMask));
  break;
 case 128:
  OvsDataXorPtrPos(data, size);
  break;
 case 130:
  OvsDataReverse(data, size);
  break;
 case 131:
  OvsDataXorPtrPos(data, size);
  OvsDataReverse(data, size);
  OvsDataXorPtrPos(data, size);
  OvsDataXorMask(data, size, s->Cedar->OpenVPNObfuscationMask, StrLen(s->Cedar->OpenVPNObfuscationMask));
 }

 u = NewUdpPacket(&se->ServerIp, se->ServerPort, &se->ClientIp, se->ClientPort,
  data, size);

 Add(s->SendPacketList, u);
}
