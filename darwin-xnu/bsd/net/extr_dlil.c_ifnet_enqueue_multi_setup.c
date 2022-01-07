
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct ifnet {int if_start_delay_timeout; int if_eflags; int if_xname; void* if_start_delay_qlen; } ;


 int IFEF_ENQUEUE_MULTI ;
 int kprintf (char*,int ,int ,int ) ;
 void* min (int,scalar_t__) ;

void
ifnet_enqueue_multi_setup(struct ifnet *ifp, uint16_t delay_qlen,
    uint16_t delay_timeout)
{
 if (delay_qlen > 0 && delay_timeout > 0) {
  ifp->if_eflags |= IFEF_ENQUEUE_MULTI;
  ifp->if_start_delay_qlen = min(100, delay_qlen);
  ifp->if_start_delay_timeout = min(20000, delay_timeout);

  ifp->if_start_delay_timeout *= 1000;
  kprintf("%s: forced IFEF_ENQUEUE_MULTI qlen %u timeout %u\n",
      ifp->if_xname, (uint32_t)delay_qlen,
      (uint32_t)delay_timeout);
 } else {
  ifp->if_eflags &= ~IFEF_ENQUEUE_MULTI;
 }
}
