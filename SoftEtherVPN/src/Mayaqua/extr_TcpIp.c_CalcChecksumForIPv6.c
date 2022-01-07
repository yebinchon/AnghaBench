
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp_buffer ;
typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int NextHeader; int UpperLayerPacketSize; int DestAddress; int SrcAddress; } ;
typedef TYPE_1__ IPV6_PSEUDO_HEADER ;
typedef void IPV6_ADDR ;


 int Copy (int *,void*,scalar_t__) ;
 int Endian32 (scalar_t__) ;
 int Free (int *) ;
 scalar_t__ INFINITE ;
 int IpChecksum (int *,scalar_t__) ;
 int * Malloc (scalar_t__) ;
 int Zero (TYPE_1__*,int) ;

USHORT CalcChecksumForIPv6(IPV6_ADDR *src_ip, IPV6_ADDR *dest_ip, UCHAR protocol, void *data, UINT size, UINT real_size)
{
 UCHAR *tmp;
 UINT tmp_size;
 IPV6_PSEUDO_HEADER *ph;
 USHORT ret;
 bool use_free = 0;
 UCHAR tmp_buffer[256];

 if (data == ((void*)0) && size != 0)
 {
  return 0;
 }

 if (real_size == 0)
 {
  real_size = size;
 }

 if (real_size == INFINITE)
 {
  real_size = 0;
 }

 tmp_size = size + sizeof(IPV6_PSEUDO_HEADER);

 if (tmp_size > sizeof(tmp_buffer))
 {
  tmp = Malloc(tmp_size);

  use_free = 1;
 }
 else
 {
  tmp = tmp_buffer;
 }

 ph = (IPV6_PSEUDO_HEADER *)tmp;
 Zero(ph, sizeof(IPV6_PSEUDO_HEADER));
 Copy(&ph->SrcAddress, src_ip, sizeof(IPV6_ADDR));
 Copy(&ph->DestAddress, dest_ip, sizeof(IPV6_ADDR));
 ph->UpperLayerPacketSize = Endian32(real_size);
 ph->NextHeader = protocol;

 Copy(((UCHAR *)tmp) + sizeof(IPV6_PSEUDO_HEADER), data, size);

 ret = IpChecksum(tmp, tmp_size);

 if (use_free)
 {
  Free(tmp);
 }

 return ret;
}
