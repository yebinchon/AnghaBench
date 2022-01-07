
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int errno_t ;


 int EJUSTRETURN ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static errno_t
ifp_if_framer_extended(struct ifnet *ifp, struct mbuf **m,
    const struct sockaddr *sa, const char *ll, const char *t,
    u_int32_t *pre, u_int32_t *post)
{
#pragma unused(ifp, sa, ll, t)
 m_freem(*m);
 *m = ((void*)0);

 if (pre != ((void*)0))
  *pre = 0;
 if (post != ((void*)0))
  *post = 0;

 return (EJUSTRETURN);
}
