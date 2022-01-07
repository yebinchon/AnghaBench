
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 int bridge_output (struct ifnet*,struct mbuf*) ;
 scalar_t__ ifnet_dequeue (struct ifnet*,struct mbuf**) ;

__attribute__((used)) static void
bridge_start(struct ifnet *ifp)
{
 struct mbuf *m;

 for (;;) {
  if (ifnet_dequeue(ifp, &m) != 0)
   break;

  (void) bridge_output(ifp, m);
 }
}
