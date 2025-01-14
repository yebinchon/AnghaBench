
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef void* uint64_t ;
typedef int u_int64_t ;
struct unpcb {struct tcpcb* unp_conn; TYPE_11__* unp_addr; } ;
struct un_sockinfo {int unsi_caddr; int unsi_addr; void* unsi_conn_so; void* unsi_conn_pcb; } ;
struct tcpcb {TYPE_11__* unp_addr; struct tcpcb* unp_socket; int t_flags; int t_maxseg; int * t_timer; int t_state; } ;
struct tcp_sockinfo {int tcpsi_tp; int tcpsi_flags; int tcpsi_mss; int * tcpsi_timer; int tcpsi_state; } ;
struct kern_event_info {int kesi_subclass_filter; int kesi_class_filter; int kesi_vendor_code_filter; } ;
struct ndrv_info {int ndrvsi_if_name; int ndrvsi_if_unit; int ndrvsi_if_family; } ;
struct TYPE_21__ {int in6_hops; int in6_ifindex; int in6_cksum; int in6_hlim; } ;
struct TYPE_19__ {int in4_tos; } ;
struct TYPE_17__ {int ina_6; } ;
struct TYPE_15__ {int ina_6; } ;
struct in_sockinfo {TYPE_8__ insi_v6; TYPE_6__ insi_v4; TYPE_4__ insi_laddr; TYPE_2__ insi_faddr; int insi_ip_ttl; int insi_vflag; int insi_flags; int insi_gencnt; int insi_lport; int insi_fport; } ;
struct TYPE_12__ {struct kern_event_info pri_kern_event; struct ndrv_info pri_ndrv; struct un_sockinfo pri_un; struct tcp_sockinfo pri_tcp; struct in_sockinfo pri_in; } ;
struct socket_info {int soi_kind; TYPE_10__ soi_proto; } ;
struct socket {int * so_pcb; TYPE_1__* so_proto; } ;
struct ndrv_cb {struct ifnet* nd_if; } ;
struct kern_event_pcb {int evp_subclass_filter; int evp_class_filter; int evp_vendor_code_filter; } ;
struct TYPE_22__ {int inp6_hops; int inp6_cksum; } ;
struct TYPE_20__ {int inp4_ip_tos; } ;
struct TYPE_18__ {int inp6_local; } ;
struct TYPE_16__ {int inp6_foreign; } ;
struct inpcb {int * inp_ppcb; TYPE_9__ inp_depend6; TYPE_7__ inp_depend4; TYPE_5__ inp_dependladdr; TYPE_3__ inp_dependfaddr; int inp_ip_ttl; int inp_vflag; int inp_flags; int inp_gencnt; int inp_lport; int inp_fport; } ;
struct ifnet {int if_name; int if_unit; int if_family; } ;
typedef int errno_t ;
struct TYPE_14__ {int * pr_domain; } ;
struct TYPE_13__ {size_t sun_len; } ;


 int IFNAMSIZ ;
 short IPPROTO_TCP ;







 int SOCKINFO_GENERIC ;
 int SOCKINFO_IN ;
 int SOCKINFO_KERN_EVENT ;
 int SOCKINFO_NDRV ;
 int SOCKINFO_TCP ;
 int SOCKINFO_UN ;
 int SOCK_DOM (struct socket*) ;
 size_t SOCK_MAXADDRLEN ;
 short SOCK_PROTO (struct socket*) ;
 short SOCK_STREAM ;
 short SOCK_TYPE (struct socket*) ;
 short SYSPROTO_CONTROL ;
 short SYSPROTO_EVENT ;
 size_t TCPT_2MSL ;
 size_t TCPT_KEEP ;
 size_t TCPT_PERSIST ;
 size_t TCPT_REXMT ;
 size_t TSI_T_2MSL ;
 size_t TSI_T_KEEP ;
 size_t TSI_T_PERSIST ;
 size_t TSI_T_REXMT ;
 int VM_KERNEL_ADDRPERM (struct tcpcb*) ;
 int bcopy (TYPE_11__*,int *,size_t) ;
 int fill_common_sockinfo (struct socket*,struct socket_info*) ;
 int kctl_fill_socketinfo (struct socket*,struct socket_info*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int strlcpy (int ,int ,int ) ;

errno_t
fill_socketinfo(struct socket *so, struct socket_info *si)
{
 errno_t error = 0;
 int domain;
 short type;
 short protocol;

 socket_lock(so, 0);

 si->soi_kind = SOCKINFO_GENERIC;

 fill_common_sockinfo(so, si);

 if (so->so_pcb == ((void*)0) || so->so_proto == 0 ||
     so->so_proto->pr_domain == ((void*)0))
  goto out;





 domain = SOCK_DOM(so);
 type = SOCK_TYPE(so);
 protocol = SOCK_PROTO(so);
 switch (domain) {
 case 134:
 case 133: {
  struct in_sockinfo *insi = &si->soi_proto.pri_in;
  struct inpcb *inp = (struct inpcb *)so->so_pcb;

  si->soi_kind = SOCKINFO_IN;

  insi->insi_fport = inp->inp_fport;
  insi->insi_lport = inp->inp_lport;
  insi->insi_gencnt = inp->inp_gencnt;
  insi->insi_flags = inp->inp_flags;
  insi->insi_vflag = inp->inp_vflag;
  insi->insi_ip_ttl = inp->inp_ip_ttl;
  insi->insi_faddr.ina_6 = inp->inp_dependfaddr.inp6_foreign;
  insi->insi_laddr.ina_6 = inp->inp_dependladdr.inp6_local;
  insi->insi_v4.in4_tos = inp->inp_depend4.inp4_ip_tos;
  insi->insi_v6.in6_hlim = 0;
  insi->insi_v6.in6_cksum = inp->inp_depend6.inp6_cksum;
  insi->insi_v6.in6_ifindex = 0;
  insi->insi_v6.in6_hops = inp->inp_depend6.inp6_hops;

  if (type == SOCK_STREAM && (protocol == 0 ||
      protocol == IPPROTO_TCP) && inp->inp_ppcb != ((void*)0)) {
   struct tcp_sockinfo *tcpsi = &si->soi_proto.pri_tcp;
   struct tcpcb *tp = (struct tcpcb *)inp->inp_ppcb;

   si->soi_kind = SOCKINFO_TCP;

   tcpsi->tcpsi_state = tp->t_state;
   tcpsi->tcpsi_timer[TSI_T_REXMT] =
       tp->t_timer[TCPT_REXMT];
   tcpsi->tcpsi_timer[TSI_T_PERSIST] =
       tp->t_timer[TCPT_PERSIST];
   tcpsi->tcpsi_timer[TSI_T_KEEP] =
       tp->t_timer[TCPT_KEEP];
   tcpsi->tcpsi_timer[TSI_T_2MSL] =
       tp->t_timer[TCPT_2MSL];
   tcpsi->tcpsi_mss = tp->t_maxseg;
   tcpsi->tcpsi_flags = tp->t_flags;
   tcpsi->tcpsi_tp =
       (u_int64_t)VM_KERNEL_ADDRPERM(tp);
  }
  break;
 }
 case 128: {
  struct unpcb *unp = (struct unpcb *)so->so_pcb;
  struct un_sockinfo *unsi = &si->soi_proto.pri_un;

  si->soi_kind = SOCKINFO_UN;

  unsi->unsi_conn_pcb =
      (uint64_t)VM_KERNEL_ADDRPERM(unp->unp_conn);
  if (unp->unp_conn)
   unsi->unsi_conn_so = (uint64_t)
       VM_KERNEL_ADDRPERM(unp->unp_conn->unp_socket);

  if (unp->unp_addr) {
   size_t addrlen = unp->unp_addr->sun_len;

   if (addrlen > SOCK_MAXADDRLEN)
    addrlen = SOCK_MAXADDRLEN;
   bcopy(unp->unp_addr, &unsi->unsi_addr, addrlen);
  }
  if (unp->unp_conn && unp->unp_conn->unp_addr) {
   size_t addrlen = unp->unp_conn->unp_addr->sun_len;

   if (addrlen > SOCK_MAXADDRLEN)
    addrlen = SOCK_MAXADDRLEN;
   bcopy(unp->unp_conn->unp_addr, &unsi->unsi_caddr,
       addrlen);
  }
  break;
 }
 case 132: {
  struct ndrv_cb *ndrv_cb = (struct ndrv_cb *)so->so_pcb;
  struct ndrv_info *ndrvsi = &si->soi_proto.pri_ndrv;

  si->soi_kind = SOCKINFO_NDRV;


  if (ndrv_cb->nd_if != 0) {
   struct ifnet *ifp = ndrv_cb->nd_if;

   ndrvsi->ndrvsi_if_family = ifp->if_family;
   ndrvsi->ndrvsi_if_unit = ifp->if_unit;
   strlcpy(ndrvsi->ndrvsi_if_name, ifp->if_name, IFNAMSIZ);
  }
  break;
 }
 case 129:
  if (SOCK_PROTO(so) == SYSPROTO_EVENT) {
   struct kern_event_pcb *ev_pcb =
       (struct kern_event_pcb *)so->so_pcb;
   struct kern_event_info *kesi =
       &si->soi_proto.pri_kern_event;

   si->soi_kind = SOCKINFO_KERN_EVENT;

   kesi->kesi_vendor_code_filter =
       ev_pcb->evp_vendor_code_filter;
   kesi->kesi_class_filter = ev_pcb->evp_class_filter;
   kesi->kesi_subclass_filter = ev_pcb->evp_subclass_filter;
  } else if (SOCK_PROTO(so) == SYSPROTO_CONTROL) {
   kctl_fill_socketinfo(so, si);
  }
  break;

 case 130:
 case 131:
 default:
  break;
 }
out:
 socket_unlock(so, 0);

 return (error);
}
