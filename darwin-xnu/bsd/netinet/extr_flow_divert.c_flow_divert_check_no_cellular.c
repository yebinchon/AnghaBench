
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {scalar_t__ inp_last_outifp; } ;
struct flow_divert_pcb {int so; } ;
typedef int errno_t ;


 int EHOSTUNREACH ;
 scalar_t__ IFNET_IS_CELLULAR (scalar_t__) ;
 scalar_t__ INP_NO_CELLULAR (struct inpcb*) ;
 struct inpcb* sotoinpcb (int ) ;

__attribute__((used)) static errno_t
flow_divert_check_no_cellular(struct flow_divert_pcb *fd_cb)
{
 struct inpcb *inp = ((void*)0);

 inp = sotoinpcb(fd_cb->so);
 if (inp && INP_NO_CELLULAR(inp) && inp->inp_last_outifp &&
     IFNET_IS_CELLULAR(inp->inp_last_outifp))
  return EHOSTUNREACH;

 return 0;
}
