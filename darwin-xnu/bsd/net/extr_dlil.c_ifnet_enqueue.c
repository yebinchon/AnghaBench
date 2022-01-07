
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int errno_t ;
typedef int boolean_t ;


 int TRUE ;
 int ifnet_enqueue_mbuf (struct ifnet*,struct mbuf*,int ,int *) ;

errno_t
ifnet_enqueue(struct ifnet *ifp, struct mbuf *m)
{
 boolean_t pdrop;
 return (ifnet_enqueue_mbuf(ifp, m, TRUE, &pdrop));
}
