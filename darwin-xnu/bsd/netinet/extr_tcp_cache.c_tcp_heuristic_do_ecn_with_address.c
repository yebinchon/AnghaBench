
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int sin_addr; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;
struct TYPE_5__ {int sin6_addr; } ;
union sockaddr_in_4_6 {TYPE_4__ sin; TYPE_2__ sa; TYPE_1__ sin6; } ;
typedef int tcks ;
struct TYPE_7__ {int addr; int addr6; } ;
struct tcp_cache_key_src {scalar_t__ af; TYPE_3__ laddr; struct ifnet* ifp; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int boolean_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int calculate_tcp_clock () ;
 int memcpy (int *,int *,int) ;
 int memset (struct tcp_cache_key_src*,int ,int) ;
 int tcp_heuristic_do_ecn_common (struct tcp_cache_key_src*) ;

boolean_t tcp_heuristic_do_ecn_with_address(struct ifnet *ifp,
    union sockaddr_in_4_6 *local_address)
{
 struct tcp_cache_key_src tcks;

 memset(&tcks, 0, sizeof(tcks));
 tcks.ifp = ifp;

 calculate_tcp_clock();

 if (local_address->sa.sa_family == AF_INET6) {
  memcpy(&tcks.laddr.addr6, &local_address->sin6.sin6_addr, sizeof(struct in6_addr));
  tcks.af = AF_INET6;
 } else if (local_address->sa.sa_family == AF_INET) {
  memcpy(&tcks.laddr.addr, &local_address->sin.sin_addr, sizeof(struct in_addr));
  tcks.af = AF_INET;
 }

 return tcp_heuristic_do_ecn_common(&tcks);
}
