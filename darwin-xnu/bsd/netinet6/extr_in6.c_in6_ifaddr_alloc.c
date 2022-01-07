
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in6_ifaddr_dbg {int in6ifa_alloc; } ;
struct TYPE_2__ {int ifa_detached; int ifa_attached; int ifa_trace; int ifa_debug; int ifa_free; } ;
struct in6_ifaddr {TYPE_1__ ia_ifa; } ;


 int IFD_ALLOC ;
 int IFD_DEBUG ;
 int M_WAITOK ;
 int bzero (struct in6_ifaddr*,int ) ;
 int ctrace_record (int *) ;
 int ifa_lock_init (TYPE_1__*) ;
 int in6_ifaddr_attached ;
 int in6_ifaddr_detached ;
 int in6_ifaddr_free ;
 int in6_ifaddr_trace ;
 scalar_t__ in6ifa_debug ;
 int in6ifa_size ;
 int in6ifa_zone ;
 struct in6_ifaddr* zalloc (int ) ;
 struct in6_ifaddr* zalloc_noblock (int ) ;

__attribute__((used)) static struct in6_ifaddr *
in6_ifaddr_alloc(int how)
{
 struct in6_ifaddr *in6ifa;

 in6ifa = (how == M_WAITOK) ? zalloc(in6ifa_zone) :
     zalloc_noblock(in6ifa_zone);
 if (in6ifa != ((void*)0)) {
  bzero(in6ifa, in6ifa_size);
  in6ifa->ia_ifa.ifa_free = in6_ifaddr_free;
  in6ifa->ia_ifa.ifa_debug |= IFD_ALLOC;
  ifa_lock_init(&in6ifa->ia_ifa);
  if (in6ifa_debug != 0) {
   struct in6_ifaddr_dbg *in6ifa_dbg =
       (struct in6_ifaddr_dbg *)in6ifa;
   in6ifa->ia_ifa.ifa_debug |= IFD_DEBUG;
   in6ifa->ia_ifa.ifa_trace = in6_ifaddr_trace;
   in6ifa->ia_ifa.ifa_attached = in6_ifaddr_attached;
   in6ifa->ia_ifa.ifa_detached = in6_ifaddr_detached;
   ctrace_record(&in6ifa_dbg->in6ifa_alloc);
  }
 }

 return (in6ifa);
}
