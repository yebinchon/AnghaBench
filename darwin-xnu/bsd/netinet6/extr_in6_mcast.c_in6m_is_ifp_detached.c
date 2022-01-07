
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in6_multi {scalar_t__ in6m_ifp; TYPE_1__* in6m_ifma; } ;
struct TYPE_2__ {scalar_t__ ifma_ifp; } ;


 int VERIFY (int) ;
 int ifnet_is_attached (scalar_t__,int ) ;

__attribute__((used)) static __inline__ int
in6m_is_ifp_detached(const struct in6_multi *inm)
{
 VERIFY(inm->in6m_ifma != ((void*)0));
 VERIFY(inm->in6m_ifp == inm->in6m_ifma->ifma_ifp);

 return (!ifnet_is_attached(inm->in6m_ifp, 0));
}
