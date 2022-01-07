
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VH ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_6__ {scalar_t__ Checksum; int Type; scalar_t__ Code; } ;
typedef TYPE_1__ ICMP_HEADER ;


 int Copy (void*,void*,scalar_t__) ;
 int Free (TYPE_1__*) ;
 int ICMP_TYPE_ECHO_RESPONSE ;
 int IP_PROTO_ICMPV4 ;
 scalar_t__ IpChecksum (TYPE_1__*,scalar_t__) ;
 int SendIp (int *,scalar_t__,scalar_t__,int ,TYPE_1__*,scalar_t__) ;
 TYPE_1__* ZeroMalloc (scalar_t__) ;

void VirtualIcmpSend(VH *v, UINT src_ip, UINT dst_ip, void *data, UINT size)
{
 ICMP_HEADER *icmp;
 void *data_buf;

 if (v == ((void*)0) || data == ((void*)0))
 {
  return;
 }


 icmp = ZeroMalloc(sizeof(ICMP_HEADER) + size);

 data_buf = ((UCHAR *)icmp) + sizeof(ICMP_HEADER);
 Copy(data_buf, data, size);

 icmp->Checksum = 0;
 icmp->Code = 0;
 icmp->Type = ICMP_TYPE_ECHO_RESPONSE;

 icmp->Checksum = IpChecksum(icmp, sizeof(ICMP_HEADER) + size);


 SendIp(v, dst_ip, src_ip, IP_PROTO_ICMPV4, icmp, sizeof(ICMP_HEADER) + size);


 Free(icmp);
}
