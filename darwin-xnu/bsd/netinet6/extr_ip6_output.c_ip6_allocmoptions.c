
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_moptions {int im6o_trace; int im6o_debug; int im6o_lock; } ;


 int IFD_ALLOC ;
 int IFD_DEBUG ;
 int IM6O_ADDREF (struct ip6_moptions*) ;
 int M_WAITOK ;
 int bzero (struct ip6_moptions*,int ) ;
 int ifa_mtx_attr ;
 int ifa_mtx_grp ;
 scalar_t__ im6o_debug ;
 int im6o_size ;
 int im6o_trace ;
 int im6o_zone ;
 int lck_mtx_init (int *,int ,int ) ;
 struct ip6_moptions* zalloc (int ) ;
 struct ip6_moptions* zalloc_noblock (int ) ;

struct ip6_moptions *
ip6_allocmoptions(int how)
{
 struct ip6_moptions *im6o;

 im6o = (how == M_WAITOK) ?
     zalloc(im6o_zone) : zalloc_noblock(im6o_zone);
 if (im6o != ((void*)0)) {
  bzero(im6o, im6o_size);
  lck_mtx_init(&im6o->im6o_lock, ifa_mtx_grp, ifa_mtx_attr);
  im6o->im6o_debug |= IFD_ALLOC;
  if (im6o_debug != 0) {
   im6o->im6o_debug |= IFD_DEBUG;
   im6o->im6o_trace = im6o_trace;
  }
  IM6O_ADDREF(im6o);
 }

 return (im6o);
}
