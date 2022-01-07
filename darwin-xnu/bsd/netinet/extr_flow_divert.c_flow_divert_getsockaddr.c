
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int so_flags; TYPE_2__* so_proto; struct flow_divert_pcb* so_fd_pcb; } ;
struct sockaddr {int dummy; } ;
struct flow_divert_pcb {int local_address; } ;
typedef int errno_t ;
struct TYPE_4__ {TYPE_1__* pr_domain; } ;
struct TYPE_3__ {int dom_family; } ;


 int SOF_FLOW_DIVERT ;
 int VERIFY (int) ;
 int flow_divert_dup_addr (int ,int ,struct sockaddr**) ;

__attribute__((used)) static errno_t
flow_divert_getsockaddr(struct socket *so, struct sockaddr **sa)
{
 struct flow_divert_pcb *fd_cb = so->so_fd_pcb;

 VERIFY((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != ((void*)0));

 return flow_divert_dup_addr(so->so_proto->pr_domain->dom_family,
                             fd_cb->local_address,
                             sa);
}
