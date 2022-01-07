
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ifclassq {scalar_t__ ifcq_disc; } ;
struct TYPE_7__ {int fqs_ifq; } ;
typedef TYPE_1__ fq_if_t ;
typedef int cqrq_throttle_t ;
typedef int cqrq_t ;
typedef int cqrq_stat_sc_t ;
typedef int cqrq_purge_sc_t ;
typedef int cqev_t ;







 int IFCQ_CONVERT_LOCK (int ) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int fq_if_event (TYPE_1__*,int ) ;
 int fq_if_purge (TYPE_1__*) ;
 int fq_if_purge_sc (TYPE_1__*,int *) ;
 int fq_if_stat_sc (TYPE_1__*,int *) ;
 int fq_if_throttle (TYPE_1__*,int *) ;

int
fq_if_request_classq(struct ifclassq *ifq, cqrq_t rq, void *arg)
{
 int err = 0;
 fq_if_t *fqs = (fq_if_t *)ifq->ifcq_disc;

 IFCQ_LOCK_ASSERT_HELD(ifq);




 IFCQ_CONVERT_LOCK(fqs->fqs_ifq);
 switch (rq) {
 case 131:
  fq_if_purge(fqs);
  break;
 case 130:
  fq_if_purge_sc(fqs, (cqrq_purge_sc_t *)arg);
  break;
 case 132:
  fq_if_event(fqs, (cqev_t)arg);
  break;
 case 128:
  fq_if_throttle(fqs, (cqrq_throttle_t *)arg);
  break;
 case 129:
  fq_if_stat_sc(fqs, (cqrq_stat_sc_t *)arg);
  break;
 }
 return (err);
}
