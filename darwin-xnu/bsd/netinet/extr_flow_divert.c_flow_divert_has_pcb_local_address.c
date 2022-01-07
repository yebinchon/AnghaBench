
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct inpcb {scalar_t__ inp_lport; int in6p_laddr; TYPE_1__ inp_laddr; } ;
typedef int boolean_t ;


 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 scalar_t__ INADDR_ANY ;

__attribute__((used)) static boolean_t
flow_divert_has_pcb_local_address(const struct inpcb *inp)
{
 return (inp->inp_lport != 0
  && (inp->inp_laddr.s_addr != INADDR_ANY || !IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_laddr)));
}
