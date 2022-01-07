
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_15__ {int Now; } ;
struct TYPE_14__ {TYPE_5__* v; int NatTableForRecv; } ;
struct TYPE_13__ {scalar_t__ Status; int SrcIp; void* LastAck; void* LastSeq; int SrcPort; int TotalRecv; int LastCommTime; } ;
struct TYPE_12__ {int Flag; scalar_t__ Checksum; int SeqNumber; int AckNumber; int DstPort; int SrcPort; } ;
typedef TYPE_1__ TCP_HEADER ;
typedef TYPE_2__ NATIVE_NAT_ENTRY ;
typedef TYPE_3__ NATIVE_NAT ;


 scalar_t__ CalcChecksumForIPv4 (int,int ,int ,TYPE_1__*,int,int ) ;
 int Endian16 (int ) ;
 void* Endian32 (int ) ;
 int IP_PROTO_TCP ;
 int NAT_TCP ;
 scalar_t__ NAT_TCP_ESTABLISHED ;
 scalar_t__ NAT_TCP_WAIT_DISCONNECT ;
 int NnSetNat (TYPE_2__*,int ,int ,int ,int,int ,int,int ) ;
 TYPE_2__* SearchHash (int ,TYPE_2__*) ;
 int SendIp (TYPE_5__*,int ,int,int ,TYPE_1__*,int) ;
 int TCP_ACK ;
 int TCP_FIN ;
 int TCP_GET_HEADER_SIZE (TYPE_1__*) ;
 int TCP_RST ;
 int TCP_SYN ;

void NnTcpReceived(NATIVE_NAT *t, UINT src_ip, UINT dest_ip, void *data, UINT size, UCHAR ttl, UINT max_l3_size)
{
 TCP_HEADER *tcp;
 UCHAR *payload;
 UINT payload_size;
 UINT tcp_header_size;

 if (t == ((void*)0) || data == ((void*)0))
 {
  return;
 }


 if (size < sizeof(TCP_HEADER))
 {
  return;
 }

 tcp = (TCP_HEADER *)data;


 tcp_header_size = TCP_GET_HEADER_SIZE(tcp) * 4;
 if (size < tcp_header_size || tcp_header_size < sizeof(TCP_HEADER))
 {
  return;
 }


 payload = ((UCHAR *)data) + tcp_header_size;
 payload_size = size - tcp_header_size;


 if (1)
 {
  NATIVE_NAT_ENTRY tt;
  NATIVE_NAT_ENTRY *e;

  NnSetNat(&tt, NAT_TCP, 0, 0, src_ip, Endian16(tcp->SrcPort), dest_ip, Endian16(tcp->DstPort));

  e = SearchHash(t->NatTableForRecv, &tt);

  if (e != ((void*)0))
  {

   e->LastCommTime = t->v->Now;
   e->TotalRecv += (UINT64)size;


   tcp->Checksum = 0;
   tcp->DstPort = Endian16(e->SrcPort);

   if (tcp->Flag & TCP_FIN || tcp->Flag & TCP_RST)
   {

    e->Status = NAT_TCP_WAIT_DISCONNECT;
   }

   if (tcp->Flag & TCP_SYN && tcp->Flag & TCP_ACK)
   {

    if (e->Status != NAT_TCP_WAIT_DISCONNECT)
    {
     e->Status = NAT_TCP_ESTABLISHED;
    }
   }

   e->LastSeq = Endian32(tcp->AckNumber);
   e->LastAck = Endian32(tcp->SeqNumber);


   tcp->Checksum = CalcChecksumForIPv4(src_ip, e->SrcIp, IP_PROTO_TCP, tcp, size, 0);


   SendIp(t->v, e->SrcIp, src_ip, IP_PROTO_TCP, tcp, size);
  }
 }
}
