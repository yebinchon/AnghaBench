
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct inpcbhead {int dummy; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_4__ {int * s6_addr32; } ;
struct inpcb {int inp_vflag; size_t inp_hash_element; int inp_flags2; TYPE_3__* inp_pcbinfo; int inp_fport; int inp_lport; TYPE_2__ inp_faddr; TYPE_1__ in6p_faddr; } ;
struct TYPE_6__ {struct inpcbhead* ipi_hashbase; int ipi_hashmask; } ;


 int INP2_INHASHLIST ;
 int INP_IPV6 ;
 size_t INP_PCBHASH (int ,int ,int ,int ) ;
 int LIST_INSERT_HEAD (struct inpcbhead*,struct inpcb*,int ) ;
 int LIST_REMOVE (struct inpcb*,int ) ;
 int VERIFY (int) ;
 int inp_hash ;
 int inp_update_necp_policy (struct inpcb*,int *,int *,int ) ;

void
in_pcbrehash(struct inpcb *inp)
{
 struct inpcbhead *head;
 u_int32_t hashkey_faddr;






  hashkey_faddr = inp->inp_faddr.s_addr;

 inp->inp_hash_element = INP_PCBHASH(hashkey_faddr, inp->inp_lport,
     inp->inp_fport, inp->inp_pcbinfo->ipi_hashmask);
 head = &inp->inp_pcbinfo->ipi_hashbase[inp->inp_hash_element];

 if (inp->inp_flags2 & INP2_INHASHLIST) {
  LIST_REMOVE(inp, inp_hash);
  inp->inp_flags2 &= ~INP2_INHASHLIST;
 }

 VERIFY(!(inp->inp_flags2 & INP2_INHASHLIST));
 LIST_INSERT_HEAD(head, inp, inp_hash);
 inp->inp_flags2 |= INP2_INHASHLIST;





}
