
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VH ;
typedef scalar_t__ USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {scalar_t__ Checksum; int Type; } ;
typedef TYPE_1__ ICMP_HEADER ;


 int Debug (char*) ;


 scalar_t__ IpChecksum (void*,int) ;
 int VirtualIcmpEchoRequestReceived (int *,int,int,int *,int,int ,TYPE_1__*,int,int *,int,int) ;

void VirtualIcmpReceived(VH *v, UINT src_ip, UINT dst_ip, void *data, UINT size, UCHAR ttl, UCHAR *ip_header, UINT ip_header_size, UINT max_l3_size)
{
 ICMP_HEADER *icmp;
 UINT msg_size;
 USHORT checksum_calc, checksum_original;

 if (v == ((void*)0) || data == ((void*)0))
 {
  return;
 }


 if (size < sizeof(ICMP_HEADER))
 {
  return;
 }


 icmp = (ICMP_HEADER *)data;


 msg_size = size - sizeof(ICMP_HEADER);


 checksum_original = icmp->Checksum;
 icmp->Checksum = 0;
 checksum_calc = IpChecksum(data, size);
 icmp->Checksum = checksum_original;

 if (checksum_calc != checksum_original)
 {

  Debug("ICMP CheckSum Failed.\n");
  return;
 }


 switch (icmp->Type)
 {
 case 129:
  VirtualIcmpEchoRequestReceived(v, src_ip, dst_ip, ((UCHAR *)data) + sizeof(ICMP_HEADER), msg_size, ttl,
   icmp, size, ip_header, ip_header_size, max_l3_size);
  break;

 case 128:

  break;
 }
}
