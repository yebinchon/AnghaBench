
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct inpcb {TYPE_1__* inp_socket; struct ifnet* inp_last_outifp; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int so_flags1; } ;


 int NSTAT_IFNET_IS_CELLULAR ;
 int NSTAT_IFNET_IS_UNKNOWN_TYPE ;
 int NSTAT_IFNET_VIA_CELLFALLBACK ;
 int SOF1_CELLFALLBACK ;
 int nstat_ifnet_to_flags (struct ifnet*) ;

__attribute__((used)) static u_int16_t
nstat_inpcb_to_flags(
 const struct inpcb *inp)
{
 u_int16_t flags = 0;

 if ((inp != ((void*)0) ) && (inp->inp_last_outifp != ((void*)0)))
 {
  struct ifnet *ifp = inp->inp_last_outifp;
  flags = nstat_ifnet_to_flags(ifp);

  if (flags & NSTAT_IFNET_IS_CELLULAR)
  {
   if (inp->inp_socket != ((void*)0) &&
       (inp->inp_socket->so_flags1 & SOF1_CELLFALLBACK))
    flags |= NSTAT_IFNET_VIA_CELLFALLBACK;
  }
 }
 else
 {
  flags = NSTAT_IFNET_IS_UNKNOWN_TYPE;
 }

 return flags;
}
