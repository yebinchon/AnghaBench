
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct walkarg {scalar_t__ w_op; int w_arg; int * w_req; int * w_tmem; } ;
struct rtentry {int rt_flags; TYPE_1__* rt_parent; int rt_refcnt; TYPE_2__* rt_ifp; int rt_use; int rt_genmask; int rt_gateway; } ;
struct rt_msghdr2 {int rtm_flags; int rtm_addrs; scalar_t__ rtm_reserved; scalar_t__ rtm_parentflags; int rtm_refcnt; int rtm_index; int rtm_rmx; int rtm_use; } ;
struct rt_msghdr {int rtm_flags; int rtm_addrs; scalar_t__ rtm_errno; scalar_t__ rtm_seq; scalar_t__ rtm_pid; int rtm_index; int rtm_rmx; int rtm_use; } ;
struct rt_addrinfo {int rti_addrs; int * rti_info; } ;
struct radix_node {int dummy; } ;
typedef int kauth_cred_t ;
typedef int info ;
typedef int caddr_t ;
struct TYPE_4__ {int if_index; } ;
struct TYPE_3__ {scalar_t__ rt_flags; } ;


 scalar_t__ NET_RT_DUMP2 ;
 scalar_t__ NET_RT_FLAGS ;
 scalar_t__ NET_RT_FLAGS_PRIV ;
 int ROUTE_OP_READ ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_GENMASK ;
 size_t RTAX_NETMASK ;
 int RTF_LLINFO ;
 int RTM_GET ;
 int RTM_GET2 ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int SYSCTL_OUT (int *,int ,int) ;
 int TRUE ;
 int bzero (int ,int) ;
 int current_proc () ;
 int kauth_cred_proc_ref (int ) ;
 int kauth_cred_unref (int *) ;
 TYPE_2__* lo_ifp ;
 scalar_t__ route_op_entitlement_check (int *,int ,int ,int ) ;
 int rt_getmetrics (struct rtentry*,int *) ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int rt_msg2 (int ,struct rt_addrinfo*,int *,struct walkarg*,int *) ;

__attribute__((used)) static int
sysctl_dumpentry(struct radix_node *rn, void *vw)
{
 struct walkarg *w = vw;
 struct rtentry *rt = (struct rtentry *)rn;
 int error = 0, size;
 struct rt_addrinfo info;
 kauth_cred_t cred;
 kauth_cred_t *credp;

 cred = kauth_cred_proc_ref(current_proc());
 credp = &cred;

 RT_LOCK(rt);
 if ((w->w_op == NET_RT_FLAGS || w->w_op == NET_RT_FLAGS_PRIV) &&
     !(rt->rt_flags & w->w_arg))
  goto done;






 if (w->w_op == NET_RT_FLAGS_PRIV && (rt->rt_flags & RTF_LLINFO)) {
  if (rt->rt_ifp != lo_ifp &&
      (route_op_entitlement_check(((void*)0), cred, ROUTE_OP_READ, TRUE) == 0)) {
   credp = ((void*)0);
  }
 }

 bzero((caddr_t)&info, sizeof (info));
 info.rti_info[RTAX_DST] = rt_key(rt);
 info.rti_info[RTAX_GATEWAY] = rt->rt_gateway;
 info.rti_info[RTAX_NETMASK] = rt_mask(rt);
 info.rti_info[RTAX_GENMASK] = rt->rt_genmask;

 if (w->w_op != NET_RT_DUMP2) {
  size = rt_msg2(RTM_GET, &info, ((void*)0), w, credp);
  if (w->w_req != ((void*)0) && w->w_tmem != ((void*)0)) {
   struct rt_msghdr *rtm =
       (struct rt_msghdr *)(void *)w->w_tmem;

   rtm->rtm_flags = rt->rt_flags;
   rtm->rtm_use = rt->rt_use;
   rt_getmetrics(rt, &rtm->rtm_rmx);
   rtm->rtm_index = rt->rt_ifp->if_index;
   rtm->rtm_pid = 0;
   rtm->rtm_seq = 0;
   rtm->rtm_errno = 0;
   rtm->rtm_addrs = info.rti_addrs;
   error = SYSCTL_OUT(w->w_req, (caddr_t)rtm, size);
  }
 } else {
  size = rt_msg2(RTM_GET2, &info, ((void*)0), w, credp);
  if (w->w_req != ((void*)0) && w->w_tmem != ((void*)0)) {
   struct rt_msghdr2 *rtm =
       (struct rt_msghdr2 *)(void *)w->w_tmem;

   rtm->rtm_flags = rt->rt_flags;
   rtm->rtm_use = rt->rt_use;
   rt_getmetrics(rt, &rtm->rtm_rmx);
   rtm->rtm_index = rt->rt_ifp->if_index;
   rtm->rtm_refcnt = rt->rt_refcnt;
   if (rt->rt_parent)
    rtm->rtm_parentflags = rt->rt_parent->rt_flags;
   else
    rtm->rtm_parentflags = 0;
   rtm->rtm_reserved = 0;
   rtm->rtm_addrs = info.rti_addrs;
   error = SYSCTL_OUT(w->w_req, (caddr_t)rtm, size);
  }
 }

done:
 RT_UNLOCK(rt);
 kauth_cred_unref(&cred);
 return (error);
}
