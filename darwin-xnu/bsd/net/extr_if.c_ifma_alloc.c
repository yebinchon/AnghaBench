
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmultiaddr {int ifma_trace; int ifma_debug; int ifma_lock; } ;


 int IFD_ALLOC ;
 int IFD_DEBUG ;
 int M_WAITOK ;
 int bzero (struct ifmultiaddr*,int ) ;
 int ifa_mtx_attr ;
 int ifa_mtx_grp ;
 scalar_t__ ifma_debug ;
 int ifma_size ;
 int ifma_trace ;
 int ifma_zone ;
 int lck_mtx_init (int *,int ,int ) ;
 struct ifmultiaddr* zalloc (int ) ;
 struct ifmultiaddr* zalloc_noblock (int ) ;

__attribute__((used)) static struct ifmultiaddr *
ifma_alloc(int how)
{
 struct ifmultiaddr *ifma;

 ifma = (how == M_WAITOK) ? zalloc(ifma_zone) :
     zalloc_noblock(ifma_zone);

 if (ifma != ((void*)0)) {
  bzero(ifma, ifma_size);
  lck_mtx_init(&ifma->ifma_lock, ifa_mtx_grp, ifa_mtx_attr);
  ifma->ifma_debug |= IFD_ALLOC;
  if (ifma_debug != 0) {
   ifma->ifma_debug |= IFD_DEBUG;
   ifma->ifma_trace = ifma_trace;
  }
 }
 return (ifma);
}
