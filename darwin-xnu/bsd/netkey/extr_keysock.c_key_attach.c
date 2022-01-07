
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {int so_options; int so_flags; void* so_pcb; } ;
struct proc {int dummy; } ;
struct TYPE_5__ {scalar_t__ sp_protocol; } ;
struct TYPE_6__ {TYPE_1__ rcb_proto; int * rcb_faddr; int * rcb_laddr; } ;
struct keycb {TYPE_2__ kp_raw; scalar_t__ kp_registered; scalar_t__ kp_promisc; } ;
typedef void* caddr_t ;
struct TYPE_8__ {int any_count; int key_count; } ;
struct TYPE_7__ {int (* pru_attach ) (struct socket*,int,struct proc*) ;} ;


 int EISCONN ;
 int ENOBUFS ;
 int M_PCB ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PF_KEY ;
 int SOF_PCBCLEARING ;
 int SO_USELOOPBACK ;
 int _FREE (struct keycb*,int ) ;
 scalar_t__ _MALLOC (int,int ,int) ;
 TYPE_4__ key_cb ;
 int key_dst ;
 int key_src ;
 int printf (char*,int) ;
 TYPE_3__ raw_usrreqs ;
 int soisconnected (struct socket*) ;
 scalar_t__ sotorawcb (struct socket*) ;
 int stub1 (struct socket*,int,struct proc*) ;

__attribute__((used)) static int
key_attach(struct socket *so, int proto, struct proc *p)
{
 struct keycb *kp;
 int error;

 if (sotorawcb(so) != 0)
  return EISCONN;
 kp = (struct keycb *)_MALLOC(sizeof (*kp), M_PCB,
     M_WAITOK | M_ZERO);
 if (kp == 0)
  return ENOBUFS;

 so->so_pcb = (caddr_t)kp;
 kp->kp_promisc = kp->kp_registered = 0;
 kp->kp_raw.rcb_laddr = &key_src;
 kp->kp_raw.rcb_faddr = &key_dst;

 error = raw_usrreqs.pru_attach(so, proto, p);
 kp = (struct keycb *)sotorawcb(so);
 if (error) {
  _FREE(kp, M_PCB);
  so->so_pcb = (caddr_t) 0;
  so->so_flags |= SOF_PCBCLEARING;
  printf("key_usrreq: key_usrreq results %d\n", error);
  return error;
 }


 if (kp->kp_raw.rcb_proto.sp_protocol == PF_KEY)
  key_cb.key_count++;
 key_cb.any_count++;
 soisconnected(so);
 so->so_options |= SO_USELOOPBACK;

 return 0;
}
