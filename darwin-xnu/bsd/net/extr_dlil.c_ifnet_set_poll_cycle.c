
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; } ;
struct ifnet {struct timespec if_poll_cycle; } ;


 int bzero (struct timespec*,int) ;
 scalar_t__ dlil_verbose ;
 char* if_name (struct ifnet*) ;
 int printf (char*,char*,scalar_t__) ;

void
ifnet_set_poll_cycle(struct ifnet *ifp, struct timespec *ts)
{
 if (ts == ((void*)0))
  bzero(&ifp->if_poll_cycle, sizeof (ifp->if_poll_cycle));
 else
  *(&ifp->if_poll_cycle) = *ts;

 if (ts != ((void*)0) && ts->tv_nsec != 0 && dlil_verbose)
  printf("%s: poll interval set to %lu nsec\n",
      if_name(ifp), ts->tv_nsec);
}
