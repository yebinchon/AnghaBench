
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ DhcpIpStart; scalar_t__ DhcpIpEnd; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;


 scalar_t__ Endian32 (scalar_t__) ;
 int * SearchDhcpLeaseByIp (TYPE_1__*,scalar_t__) ;
 int * SearchDhcpPendingLeaseByIp (TYPE_1__*,scalar_t__) ;

UINT GetFreeDhcpIpAddress(VH *v)
{
 UINT ip_start, ip_end;
 UINT i;

 if (v == ((void*)0))
 {
  return 0;
 }

 ip_start = Endian32(v->DhcpIpStart);
 ip_end = Endian32(v->DhcpIpEnd);

 for (i = ip_start; i <= ip_end;i++)
 {
  UINT ip = Endian32(i);
  if (SearchDhcpLeaseByIp(v, ip) == ((void*)0) && SearchDhcpPendingLeaseByIp(v, ip) == ((void*)0))
  {

   return ip;
  }
 }


 return 0;
}
