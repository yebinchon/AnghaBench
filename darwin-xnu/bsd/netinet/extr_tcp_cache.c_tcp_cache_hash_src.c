
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int addr; int addr6; } ;
struct tcp_heuristic_key {TYPE_1__ thk_ip; int thk_net_signature; scalar_t__ thk_family; } ;
struct TYPE_4__ {int addr; int addr6; } ;
struct tcp_cache_key_src {scalar_t__ af; TYPE_2__ laddr; struct ifnet* ifp; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int ENOENT ;
 int ifnet_get_netsignature (struct ifnet*,scalar_t__,int*,int *,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void tcp_cache_hash_src(struct tcp_cache_key_src *tcks, struct tcp_heuristic_key *key)
{
 struct ifnet *ifp = tcks->ifp;
 uint8_t len = sizeof(key->thk_net_signature);
 uint16_t flags;

 if (tcks->af == AF_INET6) {
  int ret;

  key->thk_family = AF_INET6;
  ret = ifnet_get_netsignature(ifp, AF_INET6, &len, &flags,
      key->thk_net_signature);






  if (ret == ENOENT || ret == EINVAL)
   memcpy(&key->thk_ip.addr6, &tcks->laddr.addr6, sizeof(struct in6_addr));
 } else {
  int ret;

  key->thk_family = AF_INET;
  ret = ifnet_get_netsignature(ifp, AF_INET, &len, &flags,
       key->thk_net_signature);






  if (ret == ENOENT || ret == EINVAL)
   memcpy(&key->thk_ip.addr, &tcks->laddr.addr, sizeof(struct in_addr));
 }
}
