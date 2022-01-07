
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct ifnet {int if_eflags; scalar_t__ if_start_delay_timeout; int if_snd; } ;


 scalar_t__ IFCQ_TARGET_QDELAY (int *) ;
 int IFEF_ENQUEUE_MULTI ;
 scalar_t__ IFQ_TARGET_DELAY ;
 scalar_t__ ifclassq_target_qdelay ;

void
ifclassq_calc_target_qdelay(struct ifnet *ifp, u_int64_t *if_target_qdelay)
{
 u_int64_t qdelay = 0;
 qdelay = IFCQ_TARGET_QDELAY(&ifp->if_snd);

 if (ifclassq_target_qdelay != 0)
  qdelay = ifclassq_target_qdelay;





 if (qdelay == 0)
  qdelay = IFQ_TARGET_DELAY;






 if ((ifp->if_eflags & IFEF_ENQUEUE_MULTI) &&
     ifp->if_start_delay_timeout > 0)
  qdelay += ifp->if_start_delay_timeout;

 *(if_target_qdelay) = qdelay;
}
