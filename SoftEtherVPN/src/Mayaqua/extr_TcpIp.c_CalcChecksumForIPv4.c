
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp_buffer ;
typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_2__ {scalar_t__ Reserved; int Protocol; int PacketLength; scalar_t__ DstIP; scalar_t__ SrcIP; } ;
typedef TYPE_1__ IPV4_PSEUDO_HEADER ;


 int Copy (int *,void*,scalar_t__) ;
 int Endian16 (scalar_t__) ;
 int Free (int *) ;
 scalar_t__ INFINITE ;
 int IpChecksum (int *,scalar_t__) ;
 int * Malloc (scalar_t__) ;

USHORT CalcChecksumForIPv4(UINT src_ip, UINT dst_ip, UCHAR protocol, void *data, UINT size, UINT real_size)
{
 UCHAR *tmp;
 UINT tmp_size;
 IPV4_PSEUDO_HEADER *ph;
 USHORT ret;
 bool use_free = 0;
 UCHAR tmp_buffer[1600];

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

 tmp_size = size + sizeof(IPV4_PSEUDO_HEADER);

 if (tmp_size > sizeof(tmp_buffer))
 {
  tmp = Malloc(tmp_size);

  use_free = 1;
 }
 else
 {
  tmp = tmp_buffer;
 }

 ph = (IPV4_PSEUDO_HEADER *)tmp;
 ph->SrcIP = src_ip;
 ph->DstIP = dst_ip;
 ph->PacketLength = Endian16(real_size);
 ph->Protocol = protocol;
 ph->Reserved = 0;

 if (size >= 1)
 {
  Copy(((UCHAR *)tmp) + sizeof(IPV4_PSEUDO_HEADER), data, size);
 }

 ret = IpChecksum(tmp, tmp_size);

 if (use_free)
 {
  Free(tmp);
 }

 return ret;
}
