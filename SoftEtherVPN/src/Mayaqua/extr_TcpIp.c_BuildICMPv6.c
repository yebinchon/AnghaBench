
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef void* UCHAR ;
struct TYPE_6__ {int Checksum; void* Code; void* Type; } ;
typedef int IPV6_ADDR ;
typedef TYPE_1__ ICMP_HEADER ;
typedef int BUF ;


 int * BuildIPv6 (int *,int *,scalar_t__,int ,void*,TYPE_1__*,scalar_t__) ;
 int CalcChecksumForIPv6 (int *,int *,int ,TYPE_1__*,scalar_t__,int ) ;
 int Copy (void*,void*,scalar_t__) ;
 int Free (TYPE_1__*) ;
 int IP_PROTO_ICMPV6 ;
 TYPE_1__* ZeroMalloc (scalar_t__) ;

BUF *BuildICMPv6(IPV6_ADDR *src_ip, IPV6_ADDR *dest_ip, UCHAR hop_limit, UCHAR type, UCHAR code, void *data, UINT size, UINT id)
{
 ICMP_HEADER *icmp;
 void *data_buf;
 BUF *ret;

 if (src_ip == ((void*)0) || dest_ip == ((void*)0) || data == ((void*)0))
 {
  return ((void*)0);
 }


 icmp = ZeroMalloc(sizeof(ICMP_HEADER) + size);
 data_buf = ((UCHAR *)icmp) + sizeof(ICMP_HEADER);
 Copy(data_buf, data, size);

 icmp->Type = type;
 icmp->Code = code;
 icmp->Checksum = CalcChecksumForIPv6(src_ip, dest_ip, IP_PROTO_ICMPV6, icmp,
  sizeof(ICMP_HEADER) + size, 0);

 ret = BuildIPv6(dest_ip, src_ip, id, IP_PROTO_ICMPV6, hop_limit, icmp,
  sizeof(ICMP_HEADER) + size);

 Free(icmp);

 return ret;
}
