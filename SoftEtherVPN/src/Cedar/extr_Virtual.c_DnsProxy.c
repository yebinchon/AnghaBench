
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int p ;
typedef int n ;
typedef int VH ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int DnsGetIpFromHost; int DnsOk; scalar_t__ SrcPort; scalar_t__ DestPort; scalar_t__ SrcIp; scalar_t__ DestIp; int TransactionId; int DnsTransactionId; int DnsResponseHostName; int Hostname; int DnsTargetHostName; } ;
typedef TYPE_1__ NAT_ENTRY ;
typedef TYPE_1__ DNS_PARSED_PACKET ;


 int IsEmptyStr (int ) ;
 int ParseDnsPacket (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__) ;
 scalar_t__ ParseDnsPacketEx (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__,TYPE_1__*) ;
 scalar_t__ SPECIAL_UDP_PORT_LLMNR ;
 int SendNatDnsResponse (int *,TYPE_1__*) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int UdpRecvForInternet (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__,int) ;
 int Zero (TYPE_1__*,int) ;
 int v_vgs_hostname ;

void DnsProxy(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size)
{

 if (v == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return;
 }

 if (dest_port == SPECIAL_UDP_PORT_LLMNR)
 {

  ParseDnsPacket(v, src_ip, src_port, dest_ip, dest_port, data, size);
 }
 else
 {

  if (IsEmptyStr(v_vgs_hostname) == 0)
  {

   DNS_PARSED_PACKET p;

   Zero(&p, sizeof(p));
   if (ParseDnsPacketEx(v, src_ip, src_port, dest_ip, dest_port, data, size, &p))
   {
    if (StrCmpi(p.Hostname, "254.254.211.10.in-addr.arpa") == 0)
    {
     NAT_ENTRY n;

     Zero(&n, sizeof(n));
     n.DnsTargetHostName = p.Hostname;
     n.DnsGetIpFromHost = 1;
     n.DnsResponseHostName = v_vgs_hostname;
     n.DnsTransactionId = p.TransactionId;
     n.DnsOk = 1;
     n.DestIp = dest_ip;
     n.SrcIp = src_ip;
     n.DestPort = dest_port;
     n.SrcPort = src_port;

     SendNatDnsResponse(v, &n);
     return;
    }
   }
  }

  UdpRecvForInternet(v, src_ip, src_port, dest_ip, dest_port, data, size, 1);
 }
}
