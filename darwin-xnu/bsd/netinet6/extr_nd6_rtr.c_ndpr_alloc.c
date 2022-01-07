
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefix {int ndpr_trace; int ndpr_debug; int ndpr_prproxy_sols; int ndpr_lock; } ;


 int IFD_ALLOC ;
 int IFD_DEBUG ;
 int M_WAITOK ;
 int RB_INIT (int *) ;
 int bzero (struct nd_prefix*,int ) ;
 int ifa_mtx_attr ;
 int ifa_mtx_grp ;
 int lck_mtx_init (int *,int ,int ) ;
 scalar_t__ ndpr_debug ;
 int ndpr_size ;
 int ndpr_trace ;
 int ndpr_zone ;
 struct nd_prefix* zalloc (int ) ;
 struct nd_prefix* zalloc_noblock (int ) ;

__attribute__((used)) static struct nd_prefix *
ndpr_alloc(int how)
{
 struct nd_prefix *pr;

 pr = (how == M_WAITOK) ? zalloc(ndpr_zone) : zalloc_noblock(ndpr_zone);
 if (pr != ((void*)0)) {
  bzero(pr, ndpr_size);
  lck_mtx_init(&pr->ndpr_lock, ifa_mtx_grp, ifa_mtx_attr);
  RB_INIT(&pr->ndpr_prproxy_sols);
  pr->ndpr_debug |= IFD_ALLOC;
  if (ndpr_debug != 0) {
   pr->ndpr_debug |= IFD_DEBUG;
   pr->ndpr_trace = ndpr_trace;
  }
 }
 return (pr);
}
