
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_profile {int member_2; int member_1; int member_0; } ;
struct TYPE_2__ {int tbr_percent; int tbr_rate_raw; } ;
struct ifclassq {TYPE_1__ ifcq_tbr; } ;
typedef int cqev_t ;


 int FALSE ;
 int IFCQ_IS_READY (struct ifclassq*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 scalar_t__ IFCQ_TBR_IS_ENABLED (struct ifclassq*) ;
 int ifclassq_tbr_set (struct ifclassq*,struct tb_profile*,int ) ;
 int ifclassq_update (struct ifclassq*,int ) ;

void
ifnet_update_sndq(struct ifclassq *ifq, cqev_t ev)
{
 IFCQ_LOCK_ASSERT_HELD(ifq);

 if (!(IFCQ_IS_READY(ifq)))
  return;

 if (IFCQ_TBR_IS_ENABLED(ifq)) {
  struct tb_profile tb = { ifq->ifcq_tbr.tbr_rate_raw,
      ifq->ifcq_tbr.tbr_percent, 0 };
  (void) ifclassq_tbr_set(ifq, &tb, FALSE);
 }

 ifclassq_update(ifq, ev);
}
