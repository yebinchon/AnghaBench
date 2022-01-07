
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
struct in6_addr {int dummy; } ;
struct inpcb {int inp_fport; int inp_lport; struct in6_addr in6p_faddr; struct in6_addr in6p_laddr; } ;
struct TYPE_4__ {struct in6_addr addr6; } ;
struct TYPE_3__ {struct in6_addr addr6; } ;
struct cfil_hash_entry {int cfentry_fport; int cfentry_lport; TYPE_2__ cfentry_faddr; TYPE_1__ cfentry_laddr; } ;



__attribute__((used)) static void
cfil_get_flow_address_v6(struct cfil_hash_entry *entry, struct inpcb *inp,
       struct in6_addr **laddr, struct in6_addr **faddr,
       u_int16_t *lport, u_int16_t *fport)
{
 if (entry != ((void*)0)) {
  *laddr = &entry->cfentry_laddr.addr6;
  *faddr = &entry->cfentry_faddr.addr6;
  *lport = entry->cfentry_lport;
  *fport = entry->cfentry_fport;
 } else {
  *laddr = &inp->in6p_laddr;
  *faddr = &inp->in6p_faddr;
  *lport = inp->inp_lport;
  *fport = inp->inp_fport;
 }
}
