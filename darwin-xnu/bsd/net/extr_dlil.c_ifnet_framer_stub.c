
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifnet {int (* if_framer_legacy ) (struct ifnet*,struct mbuf**,struct sockaddr const*,char const*,char const*) ;} ;
typedef int errno_t ;


 int stub1 (struct ifnet*,struct mbuf**,struct sockaddr const*,char const*,char const*) ;

errno_t
ifnet_framer_stub(struct ifnet *ifp, struct mbuf **m,
    const struct sockaddr *dest, const char *dest_linkaddr,
    const char *frame_type, u_int32_t *pre, u_int32_t *post)
{
 if (pre != ((void*)0))
  *pre = 0;
 if (post != ((void*)0))
  *post = 0;

 return (ifp->if_framer_legacy(ifp, m, dest, dest_linkaddr, frame_type));
}
