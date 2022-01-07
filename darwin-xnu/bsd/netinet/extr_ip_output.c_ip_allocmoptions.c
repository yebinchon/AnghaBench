
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_moptions {int imo_trace; int imo_debug; int imo_lock; } ;


 int IFD_ALLOC ;
 int IFD_DEBUG ;
 int IMO_ADDREF (struct ip_moptions*) ;
 int M_WAITOK ;
 int bzero (struct ip_moptions*,int ) ;
 int ifa_mtx_attr ;
 int ifa_mtx_grp ;
 scalar_t__ imo_debug ;
 int imo_size ;
 int imo_trace ;
 int imo_zone ;
 int lck_mtx_init (int *,int ,int ) ;
 struct ip_moptions* zalloc (int ) ;
 struct ip_moptions* zalloc_noblock (int ) ;

struct ip_moptions *
ip_allocmoptions(int how)
{
 struct ip_moptions *imo;

 imo = (how == M_WAITOK) ? zalloc(imo_zone) : zalloc_noblock(imo_zone);
 if (imo != ((void*)0)) {
  bzero(imo, imo_size);
  lck_mtx_init(&imo->imo_lock, ifa_mtx_grp, ifa_mtx_attr);
  imo->imo_debug |= IFD_ALLOC;
  if (imo_debug != 0) {
   imo->imo_debug |= IFD_DEBUG;
   imo->imo_trace = imo_trace;
  }
  IMO_ADDREF(imo);
 }

 return (imo);
}
