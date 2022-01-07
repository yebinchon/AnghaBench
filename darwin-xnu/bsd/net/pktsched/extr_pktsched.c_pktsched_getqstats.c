
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifclassq {int ifcq_type; } ;
struct if_ifclassq_stats {int dummy; } ;


 int ENXIO ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;



 int fq_if_getqstats_ifclassq (struct ifclassq*,int ,struct if_ifclassq_stats*) ;
 int qfq_getqstats_ifclassq (struct ifclassq*,int ,struct if_ifclassq_stats*) ;
 int tcq_getqstats_ifclassq (struct ifclassq*,int ,struct if_ifclassq_stats*) ;

int
pktsched_getqstats(struct ifclassq *ifq, u_int32_t qid,
    struct if_ifclassq_stats *ifqs)
{
 int error;

 IFCQ_LOCK_ASSERT_HELD(ifq);

 switch (ifq->ifcq_type) {
 case 128:
  error = tcq_getqstats_ifclassq(ifq, qid, ifqs);
  break;

 case 129:
  error = qfq_getqstats_ifclassq(ifq, qid, ifqs);
  break;

 case 130:
  error = fq_if_getqstats_ifclassq(ifq, qid, ifqs);
  break;
 default:
  error = ENXIO;
  break;
 }

 return (error);
}
