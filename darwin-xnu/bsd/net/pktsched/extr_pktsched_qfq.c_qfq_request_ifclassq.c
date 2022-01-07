
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_if {int dummy; } ;
struct ifclassq {scalar_t__ ifcq_disc; } ;
typedef int cqrq_throttle_t ;
typedef int cqrq_t ;
typedef int cqrq_stat_sc_t ;
typedef int cqrq_purge_sc_t ;
typedef int cqev_t ;







 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int qfq_event (struct qfq_if*,int ) ;
 int qfq_purge (struct qfq_if*) ;
 int qfq_purge_sc (struct qfq_if*,int *) ;
 int qfq_stat_sc (struct qfq_if*,int *) ;
 int qfq_throttle (struct qfq_if*,int *) ;

__attribute__((used)) static int
qfq_request_ifclassq(struct ifclassq *ifq, cqrq_t req, void *arg)
{
 struct qfq_if *qif = (struct qfq_if *)ifq->ifcq_disc;
 int err = 0;

 IFCQ_LOCK_ASSERT_HELD(ifq);

 switch (req) {
 case 131:
  qfq_purge(qif);
  break;

 case 130:
  qfq_purge_sc(qif, (cqrq_purge_sc_t *)arg);
  break;

 case 132:
  qfq_event(qif, (cqev_t)arg);
  break;

 case 128:
  err = qfq_throttle(qif, (cqrq_throttle_t *)arg);
  break;
 case 129:
  err = qfq_stat_sc(qif, (cqrq_stat_sc_t *)arg);
  break;
 }
 return (err);
}
