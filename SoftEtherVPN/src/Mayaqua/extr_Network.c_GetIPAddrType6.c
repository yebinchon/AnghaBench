
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int* ipv6_addr; } ;
typedef TYPE_1__ IP ;


 scalar_t__ Cmp (int*,int*,int) ;
 int GetAllNodeMulticaseAddress6 (TYPE_1__*) ;
 int GetAllRouterMulticastAddress6 (TYPE_1__*) ;
 int GetLoopbackAddress6 (TYPE_1__*) ;
 int IPV6_ADDR_ALL_NODE_MULTICAST ;
 int IPV6_ADDR_ALL_ROUTER_MULTICAST ;
 int IPV6_ADDR_GLOBAL_UNICAST ;
 int IPV6_ADDR_LOCAL_UNICAST ;
 int IPV6_ADDR_LOOPBACK ;
 int IPV6_ADDR_MULTICAST ;
 int IPV6_ADDR_SOLICIATION_MULTICAST ;
 int IPV6_ADDR_UNICAST ;
 int IPV6_ADDR_ZERO ;
 int IsIP6 (TYPE_1__*) ;
 scalar_t__ IsZero (int**,int) ;

UINT GetIPAddrType6(IP *ip)
{
 UINT ret = 0;

 if (IsIP6(ip) == 0)
 {
  return 0;
 }

 if (ip->ipv6_addr[0] == 0xff)
 {
  IP all_node, all_router;

  GetAllNodeMulticaseAddress6(&all_node);

  GetAllRouterMulticastAddress6(&all_router);

  ret |= IPV6_ADDR_MULTICAST;

  if (Cmp(ip->ipv6_addr, all_node.ipv6_addr, 16) == 0)
  {
   ret |= IPV6_ADDR_ALL_NODE_MULTICAST;
  }
  else if (Cmp(ip->ipv6_addr, all_router.ipv6_addr, 16) == 0)
  {
   ret |= IPV6_ADDR_ALL_ROUTER_MULTICAST;
  }
  else
  {
   if (ip->ipv6_addr[1] == 0x02 && ip->ipv6_addr[2] == 0 && ip->ipv6_addr[3] == 0 &&
    ip->ipv6_addr[4] == 0 && ip->ipv6_addr[5] == 0 && ip->ipv6_addr[6] == 0 &&
    ip->ipv6_addr[7] == 0 && ip->ipv6_addr[8] == 0 && ip->ipv6_addr[9] == 0 &&
    ip->ipv6_addr[10] == 0 && ip->ipv6_addr[11] == 0x01 && ip->ipv6_addr[12] == 0xff)
   {
    ret |= IPV6_ADDR_SOLICIATION_MULTICAST;
   }
  }
 }
 else
 {
  ret |= IPV6_ADDR_UNICAST;

  if (ip->ipv6_addr[0] == 0xfe && (ip->ipv6_addr[1] & 0xc0) == 0x80)
  {
   ret |= IPV6_ADDR_LOCAL_UNICAST;
  }
  else
  {
   ret |= IPV6_ADDR_GLOBAL_UNICAST;

   if (IsZero(&ip->ipv6_addr, 16))
   {
    ret |= IPV6_ADDR_ZERO;
   }
   else
   {
    IP loopback;

    GetLoopbackAddress6(&loopback);

    if (Cmp(ip->ipv6_addr, loopback.ipv6_addr, 16) == 0)
    {
     ret |= IPV6_ADDR_LOOPBACK;
    }
   }
  }
 }

 return ret;
}
