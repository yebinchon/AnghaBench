
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
struct TYPE_11__ {int DstPort; int SrcPort; } ;
typedef TYPE_3__ UDP_HEADER ;
typedef int UCHAR ;
struct TYPE_13__ {scalar_t__ InitiatorCookie; scalar_t__ ResponderCookie; scalar_t__ ExchangeType; } ;
struct TYPE_10__ {TYPE_5__* IkeHeader; } ;
struct TYPE_9__ {TYPE_3__* UDPHeader; } ;
struct TYPE_12__ {int* Payload; int PayloadSize; scalar_t__ TypeL3; int TypeL7; TYPE_2__ L7; TYPE_1__ L4; int TypeL4; } ;
typedef TYPE_4__ PKT ;
typedef TYPE_5__ IKE_HEADER ;


 int Endian16 (int ) ;
 scalar_t__ IKE_EXCHANGE_TYPE_AGGRESSIVE ;
 scalar_t__ IKE_EXCHANGE_TYPE_MAIN ;
 int IsZero (int*,int) ;
 scalar_t__ L3_IPV4 ;
 int L4_UDP ;
 int L7_IKECONN ;
 int L7_OPENVPNCONN ;
 int ParseDHCPv4 (TYPE_4__*,int*,int) ;
 int ParseDNS (TYPE_4__*,int*,int) ;

bool ParseUDP(PKT *p, UCHAR *buf, UINT size)
{
 USHORT src_port, dst_port;

 if (p == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }


 if (size < sizeof(UDP_HEADER))
 {

  return 0;
 }


 p->L4.UDPHeader = (UDP_HEADER *)buf;
 p->TypeL4 = L4_UDP;

 buf += sizeof(UDP_HEADER);
 size -= sizeof(UDP_HEADER);

 p->Payload = buf;
 p->PayloadSize = size;


 src_port = Endian16(p->L4.UDPHeader->SrcPort);
 dst_port = Endian16(p->L4.UDPHeader->DstPort);

 if ((src_port == 67 && dst_port == 68) ||
  (src_port == 68 && dst_port == 67))
 {
  if (p->TypeL3 == L3_IPV4)
  {

   ParseDHCPv4(p, buf, size);

   return 1;
  }
 }

  if (dst_port == 53)
 {
   ParseDNS(p, buf, size);
   return 1;
  }


 if (src_port == 500 || dst_port == 500 || src_port == 4500 || dst_port == 4500)
 {
  if (p->PayloadSize >= sizeof(IKE_HEADER))
  {
   IKE_HEADER *ike_header = (IKE_HEADER *)p->Payload;

   if (ike_header->InitiatorCookie != 0 && ike_header->ResponderCookie == 0 &&
    (ike_header->ExchangeType == IKE_EXCHANGE_TYPE_MAIN ||
    ike_header->ExchangeType == IKE_EXCHANGE_TYPE_AGGRESSIVE))
   {

    p->TypeL7 = L7_IKECONN;
    p->L7.IkeHeader = ike_header;
    return 1;
   }
  }
 }


 if (size == 14)
 {
  if (buf[0] == 0x38)
  {
   if (IsZero(buf + 9, 5))
   {
    if (IsZero(buf + 1, 8) == 0)
    {

     p->TypeL7 = L7_OPENVPNCONN;
     return 1;
    }
   }
  }
 }

 return 1;
}
