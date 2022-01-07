
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VH ;
typedef int UINT ;
typedef int UCHAR ;





 int VirtualIcmpReceived (int *,int,int,void*,int,int ,int *,int,int) ;
 int VirtualTcpReceived (int *,int,int,void*,int,int) ;
 int VirtualUdpReceived (int *,int,int,void*,int,int,int,int) ;

void IpReceived(VH *v, UINT src_ip, UINT dest_ip, UINT protocol, void *data, UINT size, bool mac_broadcast, UCHAR ttl, UCHAR *ip_header, UINT ip_header_size, bool is_local_mac, UINT max_l3_size)
{

 if (v == ((void*)0) || data == ((void*)0))
 {
  return;
 }


 switch (protocol)
 {
 case 130:
  if (mac_broadcast == 0)
  {
   VirtualIcmpReceived(v, src_ip, dest_ip, data, size, ttl, ip_header, ip_header_size, max_l3_size);
  }
  break;

 case 129:
  if (mac_broadcast == 0)
  {
   VirtualTcpReceived(v, src_ip, dest_ip, data, size, max_l3_size);
  }
  break;

 case 128:
  VirtualUdpReceived(v, src_ip, dest_ip, data, size, mac_broadcast, is_local_mac, max_l3_size);
  break;
 }
}
