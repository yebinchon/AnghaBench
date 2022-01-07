
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcq_if {int dummy; } ;
struct ifclassq {scalar_t__ ifcq_disc; } ;
typedef int cqrq_throttle_t ;
typedef int cqrq_t ;
typedef int cqrq_stat_sc_t ;
typedef int cqrq_purge_sc_t ;
typedef int cqev_t ;







 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int tcq_event (struct tcq_if*,int ) ;
 int tcq_purge (struct tcq_if*) ;
 int tcq_purge_sc (struct tcq_if*,int *) ;
 int tcq_stat_sc (struct tcq_if*,int *) ;
 int tcq_throttle (struct tcq_if*,int *) ;

__attribute__((used)) static int
tcq_request_ifclassq(struct ifclassq *ifq, cqrq_t req, void *arg)
{
 struct tcq_if *tif = (struct tcq_if *)ifq->ifcq_disc;
 int err = 0;

 IFCQ_LOCK_ASSERT_HELD(ifq);

 switch (req) {
 case 131:
  tcq_purge(tif);
  break;

 case 130:
  tcq_purge_sc(tif, (cqrq_purge_sc_t *)arg);
  break;

 case 132:
  tcq_event(tif, (cqev_t)arg);
  break;

 case 128:
  err = tcq_throttle(tif, (cqrq_throttle_t *)arg);
  break;

 case 129:
  err = tcq_stat_sc(tif, (cqrq_stat_sc_t *)arg);
  break;
 }
 return (err);
}
