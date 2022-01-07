
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VH ;
typedef scalar_t__ UINT ;


 int DnsProxy (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__) ;
 scalar_t__ NAT_DNS_PROXY_PORT ;

void UdpRecvForMe(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size)
{

 if (data == ((void*)0) || v == ((void*)0))
 {
  return;
 }

 if (dest_port == NAT_DNS_PROXY_PORT)
 {

  DnsProxy(v, src_ip, src_port, dest_ip, dest_port, data, size);
 }
}
