
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int HostMask; int HostIP; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_11__ {int* addr; } ;
struct TYPE_10__ {int DstPort; int SrcPort; } ;
typedef TYPE_2__ TCP_HEADER ;
typedef TYPE_3__ IP ;


 scalar_t__ Endian16 (int ) ;
 scalar_t__ IsInNetwork (scalar_t__,int ,int ) ;
 int TCP_GET_HEADER_SIZE (TYPE_2__*) ;
 scalar_t__ TCP_HEADER_SIZE ;
 int TcpRecvForInternet (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,TYPE_2__*,void*,scalar_t__,scalar_t__) ;
 int UINTToIP (TYPE_3__*,scalar_t__) ;

void VirtualTcpReceived(VH *v, UINT src_ip, UINT dest_ip, void *data, UINT size, UINT max_l3_size)
{
 TCP_HEADER *tcp;
 UINT src_port, dest_port;
 UINT header_size, buf_size;
 void *buf;
 IP ip1, ip2;

 if (v == ((void*)0) || data == ((void*)0))
 {
  return;
 }


 if (size < TCP_HEADER_SIZE)
 {

  return;
 }
 tcp = (TCP_HEADER *)data;
 src_port = Endian16(tcp->SrcPort);
 dest_port = Endian16(tcp->DstPort);
 if (src_port == 0 || dest_port == 0)
 {

  return;
 }
 if (src_ip == dest_ip || src_ip == 0 || src_ip == 0xffffffff || dest_ip == 0 || dest_ip == 0xffffffff)
 {

  return;
 }
 UINTToIP(&ip1, src_ip);
 UINTToIP(&ip2, dest_ip);
 if (ip1.addr[0] == 127 || ip2.addr[0] == 127)
 {

  return;
 }
 if (IsInNetwork(dest_ip, v->HostIP, v->HostMask))
 {

  return;
 }

 header_size = TCP_GET_HEADER_SIZE(tcp) * 4;
 if (size < header_size)
 {

  return;
 }

 buf_size = size - header_size;
 buf = (void *)(((UCHAR *)data) + header_size);

 TcpRecvForInternet(v, src_ip, src_port, dest_ip, dest_port, tcp, buf, buf_size, max_l3_size);
}
