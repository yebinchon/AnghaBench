
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ DhcpIpStart; scalar_t__ DhcpIpEnd; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_19__ {scalar_t__ IpAddress; int MacAddress; } ;
struct TYPE_18__ {scalar_t__ SecureNAT_RandomizeAssignIp; } ;
typedef TYPE_2__ HUB_OPTION ;
typedef TYPE_3__ DHCP_LEASE ;


 scalar_t__ Cmp (int *,int ,int) ;
 scalar_t__ Endian32 (scalar_t__) ;
 scalar_t__ GetFreeDhcpIpAddress (TYPE_1__*) ;
 scalar_t__ GetFreeDhcpIpAddressByRandom (TYPE_1__*,int *) ;
 TYPE_2__* NatGetHubOption (TYPE_1__*) ;
 TYPE_3__* SearchDhcpLeaseByIp (TYPE_1__*,scalar_t__) ;
 TYPE_3__* SearchDhcpLeaseByMac (TYPE_1__*,int *) ;
 TYPE_3__* SearchDhcpPendingLeaseByIp (TYPE_1__*,scalar_t__) ;
 TYPE_3__* SearchDhcpPendingLeaseByMac (TYPE_1__*,int *) ;

UINT ServeDhcpDiscover(VH *v, UCHAR *mac, UINT request_ip)
{
 UINT ret = 0;

 if (v == ((void*)0) || mac == ((void*)0))
 {
  return 0;
 }

 if (request_ip != 0)
 {

  DHCP_LEASE *d = SearchDhcpLeaseByIp(v, request_ip);
  if (d == ((void*)0))
  {
   d = SearchDhcpPendingLeaseByIp(v, request_ip);
  }

  if (d != ((void*)0))
  {


   if (Cmp(mac, d->MacAddress, 6) == 0)
   {

    if (Endian32(v->DhcpIpStart) <= Endian32(request_ip) &&
     Endian32(request_ip) <= Endian32(v->DhcpIpEnd))
    {

     ret = request_ip;
    }
   }
  }
  else
  {

   if (Endian32(v->DhcpIpStart) <= Endian32(request_ip) &&
    Endian32(request_ip) <= Endian32(v->DhcpIpEnd))
   {

    ret = request_ip;
   }
   else
   {

   }
  }
 }

 if (ret == 0)
 {


  DHCP_LEASE *d = SearchDhcpLeaseByMac(v, mac);
  if (d == ((void*)0))
  {
   d = SearchDhcpPendingLeaseByMac(v, mac);
  }

  if (d != ((void*)0))
  {

   if (Endian32(v->DhcpIpStart) <= Endian32(d->IpAddress) &&
    Endian32(d->IpAddress) <= Endian32(v->DhcpIpEnd))
   {

    ret = d->IpAddress;
   }
  }
 }

 if (ret == 0)
 {

  HUB_OPTION *opt = NatGetHubOption(v);

  if (opt != ((void*)0) && opt->SecureNAT_RandomizeAssignIp)
  {
   ret = GetFreeDhcpIpAddressByRandom(v, mac);
  }
  else
  {
   ret = GetFreeDhcpIpAddress(v);
  }
 }

 return ret;
}
