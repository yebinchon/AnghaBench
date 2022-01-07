
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ifclassq {int dummy; } ;
struct TYPE_8__ {int fqs_throttle; int * fqs_classq; struct ifclassq* fqs_ifq; } ;
typedef TYPE_1__ fq_if_t ;
struct TYPE_9__ {int level; int set; } ;
typedef TYPE_2__ cqrq_throttle_t ;


 int EALREADY ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;


 int MBUF_SC_BK_SYS ;
 int fq_if_classq_resume (TYPE_1__*,int *) ;
 int fq_if_classq_suspend (TYPE_1__*,int *) ;
 int fq_if_service_to_priority (TYPE_1__*,int ) ;

__attribute__((used)) static int
fq_if_throttle(fq_if_t *fqs, cqrq_throttle_t *tr)
{
 struct ifclassq *ifq = fqs->fqs_ifq;
 int index;

#pragma unused(ifq)

 IFCQ_LOCK_ASSERT_HELD(ifq);

 if (!tr->set) {
  tr->level = fqs->fqs_throttle;
  return (0);
 }

 if (tr->level == fqs->fqs_throttle)
  return (EALREADY);


 index = fq_if_service_to_priority(fqs, MBUF_SC_BK_SYS);
 switch (tr->level) {
 case 129:
  fq_if_classq_resume(fqs, &fqs->fqs_classq[index]);
  break;
 case 128:
  fq_if_classq_suspend(fqs, &fqs->fqs_classq[index]);
  break;
 default:
  break;
 }
 return (0);
}
