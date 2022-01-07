
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_12__ {int Protocol; int TotalLength; } ;
struct TYPE_10__ {TYPE_3__* IPv4Header; } ;
struct TYPE_11__ {TYPE_1__ L3; int TypeL4; int * IPv4PayloadData; int IPv4PayloadSize; int TypeL3; } ;
typedef TYPE_2__ PKT ;
typedef TYPE_3__ IPV4_HEADER ;


 int Endian16 (int ) ;
 int IPV4_GET_HEADER_LEN (TYPE_3__*) ;
 scalar_t__ IPV4_GET_OFFSET (TYPE_3__*) ;



 int L3_IPV4 ;
 int L3_UNKNOWN ;
 int L4_FRAGMENT ;
 int MIN (int,int) ;
 int ParseICMPv4 (TYPE_2__*,int *,int) ;
 int ParseTCP (TYPE_2__*,int *,int) ;
 int ParseUDP (TYPE_2__*,int *,int) ;

bool ParsePacketIPv4(PKT *p, UCHAR *buf, UINT size)
{
 UINT header_size;

 if (p == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }


 if (size < sizeof(IPV4_HEADER))
 {
  return 0;
 }


 p->L3.IPv4Header = (IPV4_HEADER *)buf;
 p->TypeL3 = L3_IPV4;


 header_size = IPV4_GET_HEADER_LEN(p->L3.IPv4Header) * 4;
 if (header_size < sizeof(IPV4_HEADER) || size < header_size)
 {

  p->L3.IPv4Header = ((void*)0);
  p->TypeL3= L3_UNKNOWN;
  return 1;
 }

 buf += header_size;
 size -= header_size;

 p->IPv4PayloadSize = MIN(size, Endian16(p->L3.IPv4Header->TotalLength) - header_size);
 if (Endian16(p->L3.IPv4Header->TotalLength) < header_size)
 {
  p->IPv4PayloadSize = 0;
 }

 p->IPv4PayloadData = buf;

 if (IPV4_GET_OFFSET(p->L3.IPv4Header) != 0)
 {

  p->TypeL4 = L4_FRAGMENT;

  return 1;
 }


 switch (p->L3.IPv4Header->Protocol)
 {
 case 130:
  return ParseICMPv4(p, buf, size);

 case 128:
  return ParseUDP(p, buf, size);

 case 129:
  return ParseTCP(p, buf, size);

 default:
  return 1;
 }
}
