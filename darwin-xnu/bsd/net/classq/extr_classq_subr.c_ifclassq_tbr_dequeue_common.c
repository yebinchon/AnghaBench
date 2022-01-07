
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int64_t ;
struct tb_regulator {scalar_t__ tbr_token; void* tbr_last; int tbr_filluptime; scalar_t__ tbr_depth; int tbr_rate; } ;
struct ifclassq {struct tb_regulator ifcq_tbr; } ;
typedef int mbuf_t ;
typedef int mbuf_svc_class_t ;
typedef int int64_t ;
typedef int classq_pkt_type_t ;
typedef scalar_t__ boolean_t ;


 int IFCQ_DEQUEUE (struct ifclassq*,void*,int*) ;
 int IFCQ_DEQUEUE_SC (struct ifclassq*,int ,void*,int*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFCQ_TBR_IS_ENABLED (struct ifclassq*) ;
 scalar_t__ MBUF_VALID_SC (int ) ;

 int TBR_SCALE (int ) ;
 int VERIFY (int) ;
 int m_pktlen (int ) ;
 void* read_machclk () ;

__attribute__((used)) static void *
ifclassq_tbr_dequeue_common(struct ifclassq *ifq, mbuf_svc_class_t sc,
    boolean_t drvmgt, classq_pkt_type_t *ptype)
{
 struct tb_regulator *tbr;
 void *p;
 int64_t interval;
 u_int64_t now;

 IFCQ_LOCK_ASSERT_HELD(ifq);

 VERIFY(!drvmgt || MBUF_VALID_SC(sc));
 VERIFY(IFCQ_TBR_IS_ENABLED(ifq));

 tbr = &ifq->ifcq_tbr;

 if (tbr->tbr_token <= 0) {
  now = read_machclk();
  interval = now - tbr->tbr_last;
  if (interval >= tbr->tbr_filluptime) {
   tbr->tbr_token = tbr->tbr_depth;
  } else {
   tbr->tbr_token += interval * tbr->tbr_rate;
   if (tbr->tbr_token > tbr->tbr_depth)
    tbr->tbr_token = tbr->tbr_depth;
  }
  tbr->tbr_last = now;
 }

 if (tbr->tbr_token <= 0)
  return (((void*)0));





  if (drvmgt)
   IFCQ_DEQUEUE_SC(ifq, sc, p, ptype);
  else
   IFCQ_DEQUEUE(ifq, p, ptype);

 if (p != ((void*)0)) {
  switch (*ptype) {
  case 128:
   tbr->tbr_token -= TBR_SCALE(m_pktlen((mbuf_t)p));
   break;


  default:
   VERIFY(0);

  }
 }

 return (p);
}
