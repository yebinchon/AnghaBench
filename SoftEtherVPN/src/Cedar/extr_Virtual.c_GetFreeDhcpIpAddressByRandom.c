
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rand_seed ;
struct TYPE_5__ {scalar_t__ DhcpIpStart; scalar_t__ DhcpIpEnd; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;


 int Copy (int *,int *,int) ;
 scalar_t__ Endian32 (scalar_t__) ;
 scalar_t__ MIN (scalar_t__,int) ;
 int Md5 (int *,int *,int) ;
 scalar_t__ READ_UINT (int *) ;
 int * SearchDhcpLeaseByIp (TYPE_1__*,scalar_t__) ;
 int * SearchDhcpPendingLeaseByIp (TYPE_1__*,scalar_t__) ;
 int WRITE_UINT (int *,scalar_t__) ;

UINT GetFreeDhcpIpAddressByRandom(VH *v, UCHAR *mac)
{
 UINT ip_start, ip_end;
 UINT i;
 UINT num_retry;

 if (v == ((void*)0) || mac == ((void*)0))
 {
  return 0;
 }

 ip_start = Endian32(v->DhcpIpStart);
 ip_end = Endian32(v->DhcpIpEnd);

 if (ip_start > ip_end)
 {
  return 0;
 }

 num_retry = (ip_end - ip_start + 1) * 2;
 num_retry = MIN(num_retry, 65536 * 2);

 for (i = 0;i < num_retry;i++)
 {
  UCHAR rand_seed[sizeof(UINT) + 6];
  UCHAR hash[16];
  UINT rand_int;
  UINT new_ip;

  WRITE_UINT(&rand_seed[0], i);
  Copy(rand_seed + sizeof(UINT), mac, 6);

  Md5(hash, rand_seed, sizeof(rand_seed));

  rand_int = READ_UINT(hash);

  new_ip = Endian32(ip_start + (rand_int % (ip_end - ip_start + 1)));

  if (SearchDhcpLeaseByIp(v, new_ip) == ((void*)0) && SearchDhcpPendingLeaseByIp(v, new_ip) == ((void*)0))
  {

   return new_ip;
  }
 }


 return 0;
}
