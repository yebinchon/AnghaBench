
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_ifaddr_dbg {int inifa_alloc; } ;
struct TYPE_2__ {int ifa_detached; int ifa_attached; int ifa_trace; int ifa_debug; int ifa_free; } ;
struct in_ifaddr {TYPE_1__ ia_ifa; } ;


 int IFD_ALLOC ;
 int IFD_DEBUG ;
 int M_WAITOK ;
 int bzero (struct in_ifaddr*,int ) ;
 int ctrace_record (int *) ;
 int ifa_lock_init (TYPE_1__*) ;
 int in_ifaddr_attached ;
 int in_ifaddr_detached ;
 int in_ifaddr_free ;
 int in_ifaddr_trace ;
 scalar_t__ inifa_debug ;
 int inifa_size ;
 int inifa_zone ;
 struct in_ifaddr* zalloc (int ) ;
 struct in_ifaddr* zalloc_noblock (int ) ;

__attribute__((used)) static struct in_ifaddr *
in_ifaddr_alloc(int how)
{
 struct in_ifaddr *inifa;

 inifa = (how == M_WAITOK) ? zalloc(inifa_zone) :
     zalloc_noblock(inifa_zone);
 if (inifa != ((void*)0)) {
  bzero(inifa, inifa_size);
  inifa->ia_ifa.ifa_free = in_ifaddr_free;
  inifa->ia_ifa.ifa_debug |= IFD_ALLOC;
  ifa_lock_init(&inifa->ia_ifa);
  if (inifa_debug != 0) {
   struct in_ifaddr_dbg *inifa_dbg =
       (struct in_ifaddr_dbg *)inifa;
   inifa->ia_ifa.ifa_debug |= IFD_DEBUG;
   inifa->ia_ifa.ifa_trace = in_ifaddr_trace;
   inifa->ia_ifa.ifa_attached = in_ifaddr_attached;
   inifa->ia_ifa.ifa_detached = in_ifaddr_detached;
   ctrace_record(&inifa_dbg->inifa_alloc);
  }
 }
 return (inifa);
}
