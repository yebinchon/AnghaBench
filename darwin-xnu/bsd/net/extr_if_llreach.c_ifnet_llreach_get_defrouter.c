
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int ss_family; int ss_len; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct rtentry {int rt_flags; int (* rt_llinfo_get_iflri ) (struct rtentry*,struct sockaddr_storage*) ;struct rtentry* rt_gwroute; } ;
struct radix_node_head {int dummy; } ;
struct ifnet_llreach_info {int ss_family; int ss_len; } ;
struct ifnet {int if_index; } ;
typedef int mask_ss ;
typedef int dst_ss ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 int AF_INET ;
 int AF_INET6 ;
 int ESRCH ;
 int RTF_GATEWAY ;
 int RTF_UP ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int SA (struct sockaddr_storage*) ;
 int TRUE ;
 int VERIFY (int) ;
 int bzero (struct sockaddr_storage*,int) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 TYPE_1__* rt_key (struct rtentry*) ;
 struct rtentry* rt_lookup (int ,int ,int ,struct radix_node_head*,int ) ;
 struct radix_node_head** rt_tables ;
 int rtfree_locked (struct rtentry*) ;
 int stub1 (struct rtentry*,struct sockaddr_storage*) ;

int
ifnet_llreach_get_defrouter(struct ifnet *ifp, int af,
    struct ifnet_llreach_info *iflri)
{
 struct radix_node_head *rnh;
 struct sockaddr_storage dst_ss, mask_ss;
 struct rtentry *rt;
 int error = ESRCH;

 VERIFY(ifp != ((void*)0) && iflri != ((void*)0) &&
     (af == AF_INET || af == AF_INET6));

 bzero(iflri, sizeof (*iflri));

 if ((rnh = rt_tables[af]) == ((void*)0))
  return (error);

 bzero(&dst_ss, sizeof (dst_ss));
 bzero(&mask_ss, sizeof (mask_ss));
 dst_ss.ss_family = af;
 dst_ss.ss_len = (af == AF_INET) ? sizeof (struct sockaddr_in) :
     sizeof (struct sockaddr_in6);

 lck_mtx_lock(rnh_lock);
 rt = rt_lookup(TRUE, SA(&dst_ss), SA(&mask_ss), rnh, ifp->if_index);
 if (rt != ((void*)0)) {
  struct rtentry *gwrt;

  RT_LOCK(rt);
  if ((rt->rt_flags & RTF_GATEWAY) &&
      (gwrt = rt->rt_gwroute) != ((void*)0) &&
      rt_key(rt)->sa_family == rt_key(gwrt)->sa_family &&
      (gwrt->rt_flags & RTF_UP)) {
   RT_UNLOCK(rt);
   RT_LOCK(gwrt);
   if (gwrt->rt_llinfo_get_iflri != ((void*)0)) {
    (*gwrt->rt_llinfo_get_iflri)(gwrt, iflri);
    error = 0;
   }
   RT_UNLOCK(gwrt);
  } else {
   RT_UNLOCK(rt);
  }
  rtfree_locked(rt);
 }
 lck_mtx_unlock(rnh_lock);

 return (error);
}
