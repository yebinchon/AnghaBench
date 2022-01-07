
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ Size; int * Data; void* SrcPort; int SrcIP; int DstIP; void* DestPort; scalar_t__ Type; } ;
typedef TYPE_1__ UDPPACKET ;
typedef int UCHAR ;
struct TYPE_7__ {int IsL2TPOnIPsecTunnelMode; int L2TP; int L2TPClientIP; int L2TPServerIP; int TunnelModeClientIP; int TunnelModeServerIP; } ;
typedef int IP ;
typedef int IKE_SERVER ;
typedef TYPE_2__ IKE_CLIENT ;


 int Copy (int *,int *,int) ;
 int IPSEC_PORT_L2TP ;
 void* IPSEC_PORT_L2TPV3_VIRTUAL ;
 int IPsecIkeClientManageL2TPServer (int *,TYPE_2__*) ;
 int IPsecIkeSendUdpForDebug (int ,int,int *,scalar_t__) ;
 int ProcL2TPPacketRecv (int ,TYPE_1__*) ;

void ProcL2TPv3PacketRecv(IKE_SERVER *ike, IKE_CLIENT *c, UCHAR *data, UINT data_size, bool is_tunnel_mode)
{
 UDPPACKET p;

 if (ike == ((void*)0) || c == ((void*)0) || data == ((void*)0) || data_size == 0)
 {
  return;
 }

 c->IsL2TPOnIPsecTunnelMode = is_tunnel_mode;

 IPsecIkeClientManageL2TPServer(ike, c);


 p.Type = 0;
 p.Data = data;
 p.DestPort = IPSEC_PORT_L2TPV3_VIRTUAL;
 p.Size = data_size;

 if (is_tunnel_mode)
 {
  Copy(&p.DstIP, &c->TunnelModeServerIP, sizeof(IP));
  Copy(&p.SrcIP, &c->TunnelModeClientIP, sizeof(IP));
 }
 else
 {
  Copy(&p.DstIP, &c->L2TPServerIP, sizeof(IP));
  Copy(&p.SrcIP, &c->L2TPClientIP, sizeof(IP));
 }
 p.SrcPort = IPSEC_PORT_L2TPV3_VIRTUAL;





 ProcL2TPPacketRecv(c->L2TP, &p);
}
