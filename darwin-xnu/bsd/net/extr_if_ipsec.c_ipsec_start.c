
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipsec_pcb {int dummy; } ;
typedef int mbuf_t ;
typedef int ifnet_t ;


 int VERIFY (int ) ;
 scalar_t__ ifnet_dequeue (int ,int *) ;
 struct ipsec_pcb* ifnet_softc (int ) ;
 scalar_t__ ipsec_output (int ,int ) ;

__attribute__((used)) static void
ipsec_start(ifnet_t interface)
{
 mbuf_t data;
 struct ipsec_pcb *pcb = ifnet_softc(interface);

 VERIFY(pcb != ((void*)0));
 for (;;) {
  if (ifnet_dequeue(interface, &data) != 0)
   break;
  if (ipsec_output(interface, data) != 0)
   break;
 }
}
