
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_6__ {scalar_t__ PublicIP; } ;
typedef TYPE_1__ NATIVE_NAT ;





 int NnIcmpReceived (TYPE_1__*,scalar_t__,scalar_t__,void*,scalar_t__,int ,scalar_t__) ;
 int NnTcpReceived (TYPE_1__*,scalar_t__,scalar_t__,void*,scalar_t__,int ,scalar_t__) ;
 int NnUdpReceived (TYPE_1__*,scalar_t__,scalar_t__,void*,scalar_t__,int ,scalar_t__) ;

void NnIpReceived(NATIVE_NAT *t, UINT src_ip, UINT dest_ip, UINT protocol, void *data, UINT size,
      UCHAR ttl, UCHAR *ip_header, UINT ip_header_size, UINT max_l3_size)
{

 if (t == ((void*)0) || data == ((void*)0))
 {
  return;
 }

 if (dest_ip != t->PublicIP)
 {

  return;
 }

 switch (protocol)
 {
 case 128:

  NnUdpReceived(t, src_ip, dest_ip, data, size, ttl, max_l3_size);
  break;

 case 129:

  NnTcpReceived(t, src_ip, dest_ip, data, size, ttl, max_l3_size);
  break;

 case 130:

  NnIcmpReceived(t, src_ip, dest_ip, data, size, ttl, max_l3_size);
  break;
 }
}
