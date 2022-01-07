
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VH ;
typedef int UINT ;


 int IsNetbiosRegistrationPacket (void*,int) ;
 int ProcessNetBiosNameQueryPacketForMyself (int *,int,int,int,int,void*,int) ;
 int UdpRecvForInternet (int *,int,int,int,int,void*,int,int) ;

void UdpRecvForNetBiosBroadcast(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size, bool dns_proxy, bool unicast)
{

 if (data == ((void*)0) || v == ((void*)0))
 {
  return;
 }


 if (IsNetbiosRegistrationPacket(data, size) == 0)
 {
  if (unicast == 0)
  {
   dest_ip = 0xFFFFFFFF;
  }

  if (ProcessNetBiosNameQueryPacketForMyself(v, src_ip, src_port, dest_ip, dest_port, data, size) == 0)
  {
   UdpRecvForInternet(v, src_ip, src_port, dest_ip, dest_port, data, size, 0);
  }
 }
}
