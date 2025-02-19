
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int sin_addr; } ;
struct TYPE_7__ {scalar_t__ sa_family; } ;
struct TYPE_6__ {int sin6_addr; } ;
union sockaddr_in_4_6 {TYPE_5__ sin; TYPE_2__ sa; TYPE_1__ sin6; } ;
typedef scalar_t__ u_int8_t ;
typedef int tcks ;
struct TYPE_9__ {int addr; int addr6; } ;
struct TYPE_8__ {int addr; int addr6; } ;
struct tcp_cache_key_src {scalar_t__ af; TYPE_4__ faddr; TYPE_3__ laddr; struct ifnet* ifp; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int boolean_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int FALSE ;
 int TRUE ;
 int calculate_tcp_clock () ;
 int memcpy (int *,int *,int) ;
 int memset (struct tcp_cache_key_src*,int ,int) ;
 int tcp_cache_get_cookie_common (struct tcp_cache_key_src*,scalar_t__*,scalar_t__*) ;
 scalar_t__ tcp_heuristic_do_tfo_common (struct tcp_cache_key_src*) ;

boolean_t tcp_heuristic_do_tfo_with_address(struct ifnet *ifp,
    union sockaddr_in_4_6 *local_address, union sockaddr_in_4_6 *remote_address,
    u_int8_t *cookie, u_int8_t *cookie_len)
{
 struct tcp_cache_key_src tcks;

 memset(&tcks, 0, sizeof(tcks));
 tcks.ifp = ifp;

 calculate_tcp_clock();

 if (remote_address->sa.sa_family == AF_INET6) {
  memcpy(&tcks.laddr.addr6, &local_address->sin6.sin6_addr, sizeof(struct in6_addr));
  memcpy(&tcks.faddr.addr6, &remote_address->sin6.sin6_addr, sizeof(struct in6_addr));
  tcks.af = AF_INET6;
 } else if (remote_address->sa.sa_family == AF_INET) {
  memcpy(&tcks.laddr.addr, &local_address->sin.sin_addr, sizeof(struct in_addr));
  memcpy(&tcks.faddr.addr, &remote_address->sin.sin_addr, sizeof(struct in_addr));
  tcks.af = AF_INET;
 }

 if (tcp_heuristic_do_tfo_common(&tcks)) {
  if (!tcp_cache_get_cookie_common(&tcks, cookie, cookie_len)) {
      *cookie_len = 0;
  }
  return TRUE;
 }

 return FALSE;
}
