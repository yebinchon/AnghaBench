
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {struct inpcb* t_inpcb; } ;
struct TYPE_4__ {int addr; int addr6; } ;
struct TYPE_3__ {int addr; int addr6; } ;
struct tcp_cache_key_src {int af; TYPE_2__ faddr; TYPE_1__ laddr; int ifp; } ;
struct inpcb {int inp_vflag; int inp_faddr; int inp_laddr; int in6p_faddr; int in6p_laddr; int inp_last_outifp; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int INP_IPV6 ;
 int memcpy (int *,int *,int) ;
 int memset (struct tcp_cache_key_src*,int ,int) ;

__attribute__((used)) static void tcp_cache_key_src_create(struct tcpcb *tp, struct tcp_cache_key_src *tcks)
{
 struct inpcb *inp = tp->t_inpcb;
 memset(tcks, 0, sizeof(*tcks));

 tcks->ifp = inp->inp_last_outifp;

 if (inp->inp_vflag & INP_IPV6) {
  memcpy(&tcks->laddr.addr6, &inp->in6p_laddr, sizeof(struct in6_addr));
  memcpy(&tcks->faddr.addr6, &inp->in6p_faddr, sizeof(struct in6_addr));
  tcks->af = AF_INET6;
 } else {
  memcpy(&tcks->laddr.addr, &inp->inp_laddr, sizeof(struct in_addr));
  memcpy(&tcks->faddr.addr, &inp->inp_faddr, sizeof(struct in_addr));
  tcks->af = AF_INET;
 }

 return;
}
