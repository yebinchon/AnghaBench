
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ so_pcb; } ;
struct inpcb {struct ifnet* inp_last_outifp; } ;
struct ifnet {scalar_t__ if_sndbyte_total; } ;
typedef int int32_t ;


 int OSAddAtomic64 (int ,scalar_t__*) ;
 int VERIFY (int) ;

inline void
inp_incr_sndbytes_total(struct socket *so, int32_t len)
{
 struct inpcb *inp = (struct inpcb *)so->so_pcb;
 struct ifnet *ifp = inp->inp_last_outifp;

 if (ifp != ((void*)0)) {
  VERIFY(ifp->if_sndbyte_total >= 0);
  OSAddAtomic64(len, &ifp->if_sndbyte_total);
 }
}
