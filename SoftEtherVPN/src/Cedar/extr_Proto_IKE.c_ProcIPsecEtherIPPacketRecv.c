
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int IsEtherIPOnIPsecTunnelMode; int EtherIP; } ;
typedef int IKE_SERVER ;
typedef TYPE_1__ IKE_CLIENT ;
typedef int BLOCK ;


 int EtherIPProcRecvPackets (int ,int *) ;
 int Free (int *) ;
 int IPsecIkeClientManageEtherIPServer (int *,TYPE_1__*) ;
 int * NewBlock (int *,scalar_t__,int ) ;

void ProcIPsecEtherIPPacketRecv(IKE_SERVER *ike, IKE_CLIENT *c, UCHAR *data, UINT data_size, bool is_tunnel_mode)
{
 BLOCK *b;

 if (ike == ((void*)0) || c == ((void*)0) || data == ((void*)0) || data_size == 0)
 {
  return;
 }

 c->IsEtherIPOnIPsecTunnelMode = is_tunnel_mode;

 IPsecIkeClientManageEtherIPServer(ike, c);

 b = NewBlock(data, data_size, 0);

 EtherIPProcRecvPackets(c->EtherIP, b);

 Free(b);
}
