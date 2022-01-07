
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int nddr_trace; int nddr_debug; int nddr_lock; } ;


 int IFD_ALLOC ;
 int IFD_DEBUG ;
 int M_WAITOK ;
 int bzero (struct nd_defrouter*,int ) ;
 int ifa_mtx_attr ;
 int ifa_mtx_grp ;
 int lck_mtx_init (int *,int ,int ) ;
 scalar_t__ nddr_debug ;
 int nddr_size ;
 int nddr_trace ;
 int nddr_zone ;
 struct nd_defrouter* zalloc (int ) ;
 struct nd_defrouter* zalloc_noblock (int ) ;

__attribute__((used)) static struct nd_defrouter *
nddr_alloc(int how)
{
 struct nd_defrouter *dr;

 dr = (how == M_WAITOK) ? zalloc(nddr_zone) : zalloc_noblock(nddr_zone);
 if (dr != ((void*)0)) {
  bzero(dr, nddr_size);
  lck_mtx_init(&dr->nddr_lock, ifa_mtx_grp, ifa_mtx_attr);
  dr->nddr_debug |= IFD_ALLOC;
  if (nddr_debug != 0) {
   dr->nddr_debug |= IFD_DEBUG;
   dr->nddr_trace = nddr_trace;
  }
 }
 return (dr);
}
