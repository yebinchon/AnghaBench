
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {struct socket* sb_so; } ;
struct TYPE_6__ {struct socket* sb_so; int sb_flags; } ;
struct socket {int so_type; scalar_t__ so_usecount; int so_flags; int so_background_thread; int so_options; int so_evlist; int so_state; scalar_t__ next_unlock_lr; scalar_t__ next_lock_lr; TYPE_2__ so_snd; TYPE_1__ so_rcv; struct protosw* so_proto; int so_cred; int e_uuid; void* e_pid; void* e_upid; int so_vuuid; int last_uuid; void* last_pid; void* last_upid; int so_comp; int so_incomp; } ;
struct protosw {int pr_type; TYPE_4__* pr_domain; TYPE_3__* pr_usrreqs; } ;
struct proc {int dummy; } ;
struct TYPE_10__ {int nas_socket_domain_other_total; int nas_socket_domain_multipath_total; int nas_socket_domain_system_total; int nas_socket_inet6_dgram_total; int nas_socket_inet6_stream_total; int nas_socket_domain_inet6_total; int nas_socket_domain_key_total; int nas_socket_domain_ndrv_total; int nas_socket_domain_route_total; int nas_socket_inet_dgram_total; int nas_socket_inet_stream_total; int nas_socket_domain_inet_total; int nas_socket_domain_local_total; } ;
struct TYPE_9__ {int dom_refs; } ;
struct TYPE_8__ {int (* pru_attach ) (struct socket*,int,struct proc*) ;} ;


 int EAFNOSUPPORT ;
 int ENOBUFS ;
 int EPROTONOSUPPORT ;
 int EPROTOTYPE ;
 int INC_ATOMIC_INT64_LIM (int ) ;
 struct proc* PROC_NULL ;
 int SB_RECV ;
 int SOCF_ASYNC ;
 int SOCK_STREAM ;
 int SOF_DELEGATED ;
 int SOF_NODEFUNCT ;
 int SO_DEBUG ;
 int SS_NBIO ;
 int SS_NOFDREF ;
 int SS_PRIV ;
 int TAILQ_INIT (int *) ;
 int TASK_POLICY_NEW_SOCKETS_BG ;
 int TRAFFIC_MGT_SO_BACKGROUND ;
 int VERIFY (int) ;
 int atomic_add_32 (int *,int) ;
 int current_thread () ;
 int kauth_cred_get () ;
 int kauth_cred_proc_ref (struct proc*) ;
 int mac_socket_label_associate (int ,struct socket*) ;
 TYPE_5__ net_api_stats ;
 int * pffinddomain (int) ;
 struct protosw* pffindproto (int,int,int) ;
 int * pffindprotonotype (int,int) ;
 struct protosw* pffindtype (int,int) ;
 scalar_t__ proc_get_effective_thread_policy (int ,int ) ;
 int proc_getexecutableuuid (struct proc*,int ,int) ;
 void* proc_pid (struct proc*) ;
 int proc_pidoriginatoruuid (int ,int) ;
 void* proc_uniqueid (struct proc*) ;
 int sflt_initsock (struct socket*) ;
 int so_set_default_traffic_class (struct socket*) ;
 struct socket* soalloc (int,int,int) ;
 int socket_set_traffic_mgt_flags (struct socket*,int ) ;
 int sofreelastref (struct socket*,int) ;
 int stub1 (struct socket*,int,struct proc*) ;
 int suser (int ,int *) ;

int
socreate_internal(int dom, struct socket **aso, int type, int proto,
    struct proc *p, uint32_t flags, struct proc *ep)
{
 struct protosw *prp;
 struct socket *so;
 int error = 0;





 VERIFY(aso != ((void*)0));
 *aso = ((void*)0);

 if (proto != 0)
  prp = pffindproto(dom, proto, type);
 else
  prp = pffindtype(dom, type);

 if (prp == ((void*)0) || prp->pr_usrreqs->pru_attach == ((void*)0)) {
  if (pffinddomain(dom) == ((void*)0))
   return (EAFNOSUPPORT);
  if (proto != 0) {
   if (pffindprotonotype(dom, proto) != ((void*)0))
    return (EPROTOTYPE);
  }
  return (EPROTONOSUPPORT);
 }
 if (prp->pr_type != type)
  return (EPROTOTYPE);
 so = soalloc(1, dom, type);
 if (so == ((void*)0))
  return (ENOBUFS);

 switch (dom) {
  case 132:
   INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_domain_local_total);
   break;
  case 135:
   INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_domain_inet_total);
   if (type == SOCK_STREAM) {
    INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_inet_stream_total);
   } else {
    INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_inet_dgram_total);
   }
   break;
  case 129:
   INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_domain_route_total);
   break;
  case 130:
   INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_domain_ndrv_total);
   break;
  case 133:
   INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_domain_key_total);
   break;
  case 134:
   INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_domain_inet6_total);
   if (type == SOCK_STREAM) {
    INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_inet6_stream_total);
   } else {
    INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_inet6_dgram_total);
   }
   break;
  case 128:
   INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_domain_system_total);
   break;
  case 131:
   INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_domain_multipath_total);
   break;
  default:
   INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_domain_other_total);
   break;
 }

 if (flags & SOCF_ASYNC)
  so->so_state |= SS_NBIO;

 TAILQ_INIT(&so->so_incomp);
 TAILQ_INIT(&so->so_comp);
 so->so_type = type;
 so->last_upid = proc_uniqueid(p);
 so->last_pid = proc_pid(p);
 proc_getexecutableuuid(p, so->last_uuid, sizeof (so->last_uuid));
 proc_pidoriginatoruuid(so->so_vuuid, sizeof(so->so_vuuid));

 if (ep != PROC_NULL && ep != p) {
  so->e_upid = proc_uniqueid(ep);
  so->e_pid = proc_pid(ep);
  proc_getexecutableuuid(ep, so->e_uuid, sizeof (so->e_uuid));
  so->so_flags |= SOF_DELEGATED;
 }

 so->so_cred = kauth_cred_proc_ref(p);
 if (!suser(kauth_cred_get(), ((void*)0)))
  so->so_state |= SS_PRIV;

 so->so_proto = prp;
 so->so_rcv.sb_flags |= SB_RECV;
 so->so_rcv.sb_so = so->so_snd.sb_so = so;
 so->next_lock_lr = 0;
 so->next_unlock_lr = 0;
 so->so_usecount++;

 error = (*prp->pr_usrreqs->pru_attach)(so, proto, p);
 if (error != 0) {





  so->so_state |= SS_NOFDREF;
  VERIFY(so->so_usecount > 0);
  so->so_usecount--;
  sofreelastref(so, 1);
  return (error);
 }

 atomic_add_32(&prp->pr_domain->dom_refs, 1);
 TAILQ_INIT(&so->so_evlist);


 sflt_initsock(so);




 so_set_default_traffic_class(so);





 if (proc_get_effective_thread_policy(current_thread(),
     TASK_POLICY_NEW_SOCKETS_BG)) {
  socket_set_traffic_mgt_flags(so, TRAFFIC_MGT_SO_BACKGROUND);
  so->so_background_thread = current_thread();
 }

 switch (dom) {




 case 132:
 case 128:
 case 131:
  so->so_flags |= SOF_NODEFUNCT;
  break;
 default:
  break;
 }
 *aso = so;

 return (0);
}
