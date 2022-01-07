
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int (* if_output ) (struct ifnet*,struct mbuf*) ;} ;
typedef int errno_t ;


 int stub1 (struct ifnet*,struct mbuf*) ;

errno_t
dlil_output_handler(struct ifnet *ifp, struct mbuf *m)
{
 return (ifp->if_output(ifp, m));
}
