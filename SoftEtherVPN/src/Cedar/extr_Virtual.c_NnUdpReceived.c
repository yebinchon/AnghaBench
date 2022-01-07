
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_9__ {int SrcPort; int DstPort; int PacketLength; } ;
typedef TYPE_1__ UDP_HEADER ;
typedef int UCHAR ;
struct TYPE_12__ {int Now; } ;
struct TYPE_11__ {TYPE_4__* v; int NatTableForRecv; } ;
struct TYPE_10__ {int SrcPort; int SrcIp; int TotalRecv; int LastCommTime; } ;
typedef TYPE_2__ NATIVE_NAT_ENTRY ;
typedef TYPE_3__ NATIVE_NAT ;


 int Endian16 (int ) ;
 int NAT_UDP ;
 int NnSetNat (TYPE_2__*,int ,int ,int ,int ,int ,int,int) ;
 TYPE_2__* SearchHash (int ,TYPE_2__*) ;
 int SendUdp (TYPE_4__*,int ,int ,int,int,int *,int) ;

void NnUdpReceived(NATIVE_NAT *t, UINT src_ip, UINT dest_ip, void *data, UINT size, UCHAR ttl, UINT max_l3_size)
{
 UDP_HEADER *udp;
 UCHAR *payload;
 UINT payload_size;

 if (t == ((void*)0) || data == ((void*)0))
 {
  return;
 }


 if (size <= sizeof(UDP_HEADER))
 {
  return;
 }

 udp = (UDP_HEADER *)data;


 payload = ((UCHAR *)data) + sizeof(UDP_HEADER);
 payload_size = size - sizeof(UDP_HEADER);


 if (payload_size < (Endian16(udp->PacketLength) - sizeof(UDP_HEADER)))
 {
  return;
 }


 payload_size = Endian16(udp->PacketLength) - sizeof(UDP_HEADER);


 if (1)
 {
  NATIVE_NAT_ENTRY tt;
  NATIVE_NAT_ENTRY *e;

  NnSetNat(&tt, NAT_UDP, 0, 0, 0, 0, dest_ip, Endian16(udp->DstPort));

  e = SearchHash(t->NatTableForRecv, &tt);

  if (e != ((void*)0))
  {

   e->LastCommTime = t->v->Now;
   e->TotalRecv += (UINT64)payload_size;


   SendUdp(t->v, e->SrcIp, e->SrcPort, src_ip, Endian16(udp->SrcPort),
    payload, payload_size);
  }
 }
}
