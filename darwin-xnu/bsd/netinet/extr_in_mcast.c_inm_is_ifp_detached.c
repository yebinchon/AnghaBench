
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_multi {scalar_t__ inm_ifp; TYPE_1__* inm_ifma; } ;
struct TYPE_2__ {scalar_t__ ifma_ifp; } ;


 int VERIFY (int) ;
 int ifnet_is_attached (scalar_t__,int ) ;

__attribute__((used)) static __inline__ int
inm_is_ifp_detached(const struct in_multi *inm)
{
 VERIFY(inm->inm_ifma != ((void*)0));
 VERIFY(inm->inm_ifp == inm->inm_ifma->ifma_ifp);

 return (!ifnet_is_attached(inm->inm_ifp, 0));
}
