
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walkarg {scalar_t__ w_op; int w_arg; int * w_req; int * w_tmem; } ;
struct rtentry {int rt_flags; int (* rt_llinfo_get_ri ) (struct rtentry*,struct rt_addrinfo*) ;TYPE_1__* rt_ifp; int rt_use; int rt_genmask; int rt_gateway; } ;
struct rt_addrinfo {int ri_npm; int ri_lqm; int ri_rssi; int rti_addrs; int * rti_info; } ;
struct rt_msghdr_ext {int rtm_flags; struct rt_addrinfo rtm_ri; int rtm_addrs; scalar_t__ rtm_errno; scalar_t__ rtm_seq; scalar_t__ rtm_pid; int rtm_index; int rtm_rmx; int rtm_use; } ;
struct radix_node {int dummy; } ;
typedef int kauth_cred_t ;
typedef int info ;
typedef int caddr_t ;
struct TYPE_2__ {int if_index; } ;


 int IFNET_LQM_THRESH_OFF ;
 int IFNET_NPM_THRESH_UNKNOWN ;
 int IFNET_RSSI_UNKNOWN ;
 scalar_t__ NET_RT_DUMPX_FLAGS ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_GENMASK ;
 size_t RTAX_NETMASK ;
 int RTM_GET_EXT ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int SYSCTL_OUT (int *,int ,int) ;
 int bzero (struct rt_addrinfo*,int) ;
 int current_proc () ;
 int kauth_cred_proc_ref (int ) ;
 int kauth_cred_unref (int *) ;
 int rt_getmetrics (struct rtentry*,int *) ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int rt_msg2 (int ,struct rt_addrinfo*,int *,struct walkarg*,int *) ;
 int stub1 (struct rtentry*,struct rt_addrinfo*) ;

__attribute__((used)) static int
sysctl_dumpentry_ext(struct radix_node *rn, void *vw)
{
 struct walkarg *w = vw;
 struct rtentry *rt = (struct rtentry *)rn;
 int error = 0, size;
 struct rt_addrinfo info;
 kauth_cred_t cred;

 cred = kauth_cred_proc_ref(current_proc());

 RT_LOCK(rt);
 if (w->w_op == NET_RT_DUMPX_FLAGS && !(rt->rt_flags & w->w_arg))
  goto done;
 bzero(&info, sizeof (info));
 info.rti_info[RTAX_DST] = rt_key(rt);
 info.rti_info[RTAX_GATEWAY] = rt->rt_gateway;
 info.rti_info[RTAX_NETMASK] = rt_mask(rt);
 info.rti_info[RTAX_GENMASK] = rt->rt_genmask;

 size = rt_msg2(RTM_GET_EXT, &info, ((void*)0), w, &cred);
 if (w->w_req != ((void*)0) && w->w_tmem != ((void*)0)) {
  struct rt_msghdr_ext *ertm =
      (struct rt_msghdr_ext *)(void *)w->w_tmem;

  ertm->rtm_flags = rt->rt_flags;
  ertm->rtm_use = rt->rt_use;
  rt_getmetrics(rt, &ertm->rtm_rmx);
  ertm->rtm_index = rt->rt_ifp->if_index;
  ertm->rtm_pid = 0;
  ertm->rtm_seq = 0;
  ertm->rtm_errno = 0;
  ertm->rtm_addrs = info.rti_addrs;
  if (rt->rt_llinfo_get_ri == ((void*)0)) {
   bzero(&ertm->rtm_ri, sizeof (ertm->rtm_ri));
   ertm->rtm_ri.ri_rssi = IFNET_RSSI_UNKNOWN;
   ertm->rtm_ri.ri_lqm = IFNET_LQM_THRESH_OFF;
   ertm->rtm_ri.ri_npm = IFNET_NPM_THRESH_UNKNOWN;
  } else {
   rt->rt_llinfo_get_ri(rt, &ertm->rtm_ri);
  }
  error = SYSCTL_OUT(w->w_req, (caddr_t)ertm, size);
 }

done:
 RT_UNLOCK(rt);
 kauth_cred_unref(&cred);
 return (error);
}
