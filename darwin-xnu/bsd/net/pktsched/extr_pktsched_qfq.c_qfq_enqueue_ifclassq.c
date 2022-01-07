
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct pf_mtag {int dummy; } ;
struct mbuf {int m_flags; } ;
struct ifclassq {TYPE_1__* ifcq_disc_slots; int ifcq_disc; int ifcq_ifp; } ;
typedef int pktsched_pkt_t ;
typedef int classq_pkt_type_t ;
typedef int boolean_t ;
struct TYPE_2__ {int cl; } ;







 int ENOBUFS ;
 int EQFULL ;
 int EQSUSPENDED ;
 int FALSE ;
 int IFCQ_CONVERT_LOCK (struct ifclassq*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 scalar_t__ IFCQ_SC_MAX ;
 int LOG_ERR ;
 scalar_t__ MBUF_SCIDX (int ) ;
 int M_PKTHDR ;

 int TRUE ;
 int VERIFY (int) ;
 int if_name (int ) ;
 int log (int ,char*,int ) ;
 int m_freem (struct mbuf*) ;
 struct pf_mtag* m_pftag (struct mbuf*) ;
 int mbuf_get_service_class (struct mbuf*) ;
 int pktsched_free_pkt (int *) ;
 int pktsched_pkt_encap (int *,int ,void*) ;
 int qfq_enqueue (int ,int ,int *,struct pf_mtag*) ;

__attribute__((used)) static int
qfq_enqueue_ifclassq(struct ifclassq *ifq, void *p, classq_pkt_type_t ptype,
    boolean_t *pdrop)
{
 u_int32_t i = 0;
 int ret;
 pktsched_pkt_t pkt;
 struct pf_mtag *t = ((void*)0);

 IFCQ_LOCK_ASSERT_HELD(ifq);

 switch (ptype) {
 case 128: {
  struct mbuf *m = p;
  if (!(m->m_flags & M_PKTHDR)) {

   log(LOG_ERR, "%s: packet does not have pkthdr\n",
       if_name(ifq->ifcq_ifp));
   IFCQ_CONVERT_LOCK(ifq);
   m_freem(m);
   *pdrop = TRUE;
   return (ENOBUFS);
  }
  i = MBUF_SCIDX(mbuf_get_service_class(m));
  t = m_pftag(m);
  break;
 }


 default:
  VERIFY(0);

 }

 VERIFY((u_int32_t)i < IFCQ_SC_MAX);

 pktsched_pkt_encap(&pkt, ptype, p);

 ret = qfq_enqueue(ifq->ifcq_disc,
     ifq->ifcq_disc_slots[i].cl, &pkt, t);

 if ((ret != 0) && (ret != 129)) {
  pktsched_free_pkt(&pkt);
  *pdrop = TRUE;
 } else {
  *pdrop = FALSE;
 }

 switch (ret) {
 case 133:
  ret = ENOBUFS;
  break;
 case 132:
  ret = EQFULL;
  break;
 case 131:
  ret = EQSUSPENDED;
  break;
 case 129:
  ret = EQFULL;
  break;
 case 130:
  ret = 0;
  break;
 default:
  VERIFY(0);
 }
 return (ret);
}
