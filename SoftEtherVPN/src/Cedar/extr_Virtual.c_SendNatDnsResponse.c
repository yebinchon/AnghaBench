
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ HostIP; } ;
typedef TYPE_1__ VH ;
typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_19__ {scalar_t__ Size; int Buf; } ;
struct TYPE_18__ {int Flag1; int Flag2; scalar_t__ AdditionalRRs; scalar_t__ AuthorityRRs; void* AnswerRRs; void* NumQuery; void* TransactionId; } ;
struct TYPE_17__ {int DnsGetIpFromHost; int DnsOk; scalar_t__ DestIp; int DestPort; int SrcPort; int SrcIp; scalar_t__ DnsTransactionId; int DnsResponseHostName; int DnsResponseIp; int DnsTargetHostName; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef TYPE_3__ DNSV4_HEADER ;
typedef TYPE_4__ BUF ;


 int BuildDnsQueryPacket (TYPE_4__*,int ,int) ;
 int BuildDnsResponsePacketA (TYPE_4__*,int *) ;
 int BuildDnsResponsePacketPtr (TYPE_4__*,int ) ;
 int Copy (int *,int ,scalar_t__) ;
 void* Endian16 (int) ;
 scalar_t__ Endian32 (int ) ;
 int Free (TYPE_3__*) ;
 int FreeBuf (TYPE_4__*) ;
 TYPE_4__* NewBuf () ;
 int SPECIAL_IPV4_ADDR_LLMNR_DEST ;
 int SPECIAL_UDP_PORT_LLMNR ;
 int SendUdp (TYPE_1__*,int ,int ,scalar_t__,int ,TYPE_3__*,scalar_t__) ;
 TYPE_3__* ZeroMalloc (scalar_t__) ;

void SendNatDnsResponse(VH *v, NAT_ENTRY *n)
{
 BUF *b;
 UINT dns_header_size;
 DNSV4_HEADER *dns;
 UINT src_ip;

 if (n == ((void*)0) || v == ((void*)0))
 {
  return;
 }


 b = NewBuf();


 if (n->DnsGetIpFromHost == 0)
 {
  BuildDnsQueryPacket(b, n->DnsTargetHostName, 0);
 }
 else
 {
  BuildDnsQueryPacket(b, n->DnsTargetHostName, 1);
 }


 if (n->DnsOk)
 {
  if (n->DnsGetIpFromHost == 0)
  {
   BuildDnsResponsePacketA(b, &n->DnsResponseIp);
  }
  else
  {
   BuildDnsResponsePacketPtr(b, n->DnsResponseHostName);
  }
 }


 dns_header_size = sizeof(DNSV4_HEADER) + b->Size;

 dns = ZeroMalloc(dns_header_size);
 dns->TransactionId = Endian16((USHORT)n->DnsTransactionId);


 if (n->DnsOk)
 {
  dns->Flag1 = 0x85;
  dns->Flag2 = 0x80;
 }
 else
 {
  dns->Flag1 = 0x85;
  dns->Flag2 = 0x83;
 }

 dns->NumQuery = Endian16(1);
 dns->AnswerRRs = Endian16(n->DnsOk != 0 ? 1 : 0);
 dns->AuthorityRRs = 0;
 dns->AdditionalRRs = 0;


 src_ip = n->DestIp;
 if (src_ip == Endian32(SPECIAL_IPV4_ADDR_LLMNR_DEST) && n->DestPort == SPECIAL_UDP_PORT_LLMNR)
 {

  src_ip = v->HostIP;

  dns->Flag1 = 0x84;
  dns->Flag2 = 0x00;
 }


 Copy(((UCHAR *)dns) + sizeof(DNSV4_HEADER), b->Buf, b->Size);


 SendUdp(v, n->SrcIp, n->SrcPort, src_ip, n->DestPort, dns, dns_header_size);


 Free(dns);
 FreeBuf(b);
}
