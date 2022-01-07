
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_int64_t ;
struct socket_info {short soi_options; int soi_rcv; int soi_snd; int soi_oobmark; int soi_error; int soi_timeo; int soi_qlimit; int soi_incqlen; int soi_qlen; scalar_t__ soi_family; scalar_t__ soi_protocol; void* soi_pcb; int soi_state; int soi_linger; int soi_type; void* soi_so; } ;
struct socket {int so_options; int so_rcv; int so_snd; int so_oobmark; int so_error; int so_timeo; int so_qlimit; int so_incqlen; int so_qlen; TYPE_1__* so_proto; struct socket* so_pcb; int so_state; int so_linger; int so_type; } ;
struct TYPE_2__ {scalar_t__ pr_domain; } ;


 scalar_t__ SOCK_DOM (struct socket*) ;
 scalar_t__ SOCK_PROTO (struct socket*) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int fill_sockbuf_info (int *,int *) ;

__attribute__((used)) static void
fill_common_sockinfo(struct socket *so, struct socket_info *si)
{
 si->soi_so = (u_int64_t)VM_KERNEL_ADDRPERM(so);
 si->soi_type = so->so_type;
 si->soi_options = (short)(so->so_options & 0xffff);
 si->soi_linger = so->so_linger;
 si->soi_state = so->so_state;
 si->soi_pcb = (u_int64_t)VM_KERNEL_ADDRPERM(so->so_pcb);
 if (so->so_proto) {
  si->soi_protocol = SOCK_PROTO(so);
  if (so->so_proto->pr_domain)
   si->soi_family = SOCK_DOM(so);
  else
   si->soi_family = 0;
 } else {
  si->soi_protocol = si->soi_family = 0;
 }
 si->soi_qlen = so->so_qlen;
 si->soi_incqlen = so->so_incqlen;
 si->soi_qlimit = so->so_qlimit;
 si->soi_timeo = so->so_timeo;
 si->soi_error = so->so_error;
 si->soi_oobmark = so->so_oobmark;
 fill_sockbuf_info(&so->so_snd, &si->soi_snd);
 fill_sockbuf_info(&so->so_rcv, &si->soi_rcv);
}
