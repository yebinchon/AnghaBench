
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef int UINT ;
struct TYPE_5__ {scalar_t__ Checksum; } ;
typedef TYPE_1__ IPV4_HEADER ;


 int IPV4_GET_HEADER_LEN (TYPE_1__*) ;
 scalar_t__ IpChecksum (TYPE_1__*,int) ;

bool IpCheckChecksum(IPV4_HEADER *ip)
{
 UINT header_size;
 USHORT checksum_original, checksum_calc;

 if (ip == ((void*)0))
 {
  return 0;
 }

 header_size = IPV4_GET_HEADER_LEN(ip) * 4;
 checksum_original = ip->Checksum;
 ip->Checksum = 0;
 checksum_calc = IpChecksum(ip, header_size);
 ip->Checksum = checksum_original;

 if (checksum_original == checksum_calc)
 {
  return 1;
 }
 else
 {
  return 0;
 }
}
