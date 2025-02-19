
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct tcq_if {int dummy; } ;
struct tcq_class {int dummy; } ;
struct ifnet {int dummy; } ;
struct ifclassq {scalar_t__ ifcq_type; TYPE_1__* ifcq_disc_slots; int * ifcq_disc; struct ifnet* ifcq_ifp; } ;
typedef int classq_pkt_type_t ;
struct TYPE_2__ {size_t qid; struct tcq_class* cl; } ;


 int ENOMEM ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFCQ_MAXLEN (struct ifclassq*) ;
 int M_WAITOK ;
 int PKTSCHEDF_QALG_DELAYBASED ;
 int PKTSCHEDF_QALG_ECN ;
 int PKTSCHEDF_QALG_FLOWCTL ;
 int PKTSCHEDF_QALG_SFB ;
 scalar_t__ PKTSCHEDT_NONE ;
 int PKTSCHEDT_TCQ ;
 size_t SCIDX_AV ;
 size_t SCIDX_BE ;
 size_t SCIDX_BK ;
 size_t SCIDX_BK_SYS ;
 size_t SCIDX_CTL ;
 size_t SCIDX_OAM ;
 size_t SCIDX_RD ;
 size_t SCIDX_RV ;
 size_t SCIDX_VI ;
 size_t SCIDX_VO ;
 int TQCF_DEFAULTCLASS ;
 int TQCF_DELAYBASED ;
 int TQCF_ECN ;
 int TQCF_FLOWCTL ;
 int TQCF_LAZY ;
 int TQCF_SFB ;
 int VERIFY (int) ;
 int if_sndq_maxlen ;
 int ifclassq_attach (struct ifclassq*,int ,struct tcq_if*,int ,int *,int ,int *,int *,int ) ;
 int tcq_add_queue (struct tcq_if*,int,int,int,size_t,struct tcq_class**,int ) ;
 struct tcq_if* tcq_alloc (struct ifnet*,int ) ;
 int tcq_dequeue_tc_ifclassq ;
 int tcq_destroy_locked (struct tcq_if*) ;
 int tcq_enqueue_ifclassq ;
 int tcq_request_ifclassq ;

int
tcq_setup_ifclassq(struct ifclassq *ifq, u_int32_t flags,
    classq_pkt_type_t ptype)
{
 struct ifnet *ifp = ifq->ifcq_ifp;
 struct tcq_class *cl0, *cl1, *cl2, *cl3;
 struct tcq_if *tif;
 u_int32_t maxlen = 0, qflags = 0;
 int err = 0;

 IFCQ_LOCK_ASSERT_HELD(ifq);
 VERIFY(ifq->ifcq_disc == ((void*)0));
 VERIFY(ifq->ifcq_type == PKTSCHEDT_NONE);

 if (flags & PKTSCHEDF_QALG_SFB)
  qflags |= TQCF_SFB;
 if (flags & PKTSCHEDF_QALG_ECN)
  qflags |= TQCF_ECN;
 if (flags & PKTSCHEDF_QALG_FLOWCTL)
  qflags |= TQCF_FLOWCTL;
 if (flags & PKTSCHEDF_QALG_DELAYBASED)
  qflags |= TQCF_DELAYBASED;

 tif = tcq_alloc(ifp, M_WAITOK);
 if (tif == ((void*)0))
  return (ENOMEM);

 if ((maxlen = IFCQ_MAXLEN(ifq)) == 0)
  maxlen = if_sndq_maxlen;

 if ((err = tcq_add_queue(tif, 0, maxlen,
     qflags | TQCF_LAZY, SCIDX_BK, &cl0, ptype)) != 0)
  goto cleanup;

 if ((err = tcq_add_queue(tif, 1, maxlen,
     qflags | TQCF_DEFAULTCLASS, SCIDX_BE, &cl1, ptype)) != 0)
  goto cleanup;

 if ((err = tcq_add_queue(tif, 2, maxlen,
     qflags | TQCF_LAZY, SCIDX_VI, &cl2, ptype)) != 0)
  goto cleanup;

 if ((err = tcq_add_queue(tif, 3, maxlen,
     qflags, SCIDX_VO, &cl3, ptype)) != 0)
  goto cleanup;

 err = ifclassq_attach(ifq, PKTSCHEDT_TCQ, tif,
     tcq_enqueue_ifclassq, ((void*)0), tcq_dequeue_tc_ifclassq,
     ((void*)0), ((void*)0), tcq_request_ifclassq);


 if (err == 0) {

  ifq->ifcq_disc_slots[SCIDX_BK_SYS].qid = SCIDX_BK;
  ifq->ifcq_disc_slots[SCIDX_BK_SYS].cl = cl0;

  ifq->ifcq_disc_slots[SCIDX_BK].qid = SCIDX_BK;
  ifq->ifcq_disc_slots[SCIDX_BK].cl = cl0;


  ifq->ifcq_disc_slots[SCIDX_BE].qid = SCIDX_BE;
  ifq->ifcq_disc_slots[SCIDX_BE].cl = cl1;

  ifq->ifcq_disc_slots[SCIDX_RD].qid = SCIDX_BE;
  ifq->ifcq_disc_slots[SCIDX_RD].cl = cl1;

  ifq->ifcq_disc_slots[SCIDX_OAM].qid = SCIDX_BE;
  ifq->ifcq_disc_slots[SCIDX_OAM].cl = cl1;


  ifq->ifcq_disc_slots[SCIDX_AV].qid = SCIDX_VI;
  ifq->ifcq_disc_slots[SCIDX_AV].cl = cl2;

  ifq->ifcq_disc_slots[SCIDX_RV].qid = SCIDX_VI;
  ifq->ifcq_disc_slots[SCIDX_RV].cl = cl2;

  ifq->ifcq_disc_slots[SCIDX_VI].qid = SCIDX_VI;
  ifq->ifcq_disc_slots[SCIDX_VI].cl = cl2;


  ifq->ifcq_disc_slots[SCIDX_VO].qid = SCIDX_VO;
  ifq->ifcq_disc_slots[SCIDX_VO].cl = cl3;

  ifq->ifcq_disc_slots[SCIDX_CTL].qid = SCIDX_VO;
  ifq->ifcq_disc_slots[SCIDX_CTL].cl = cl3;
 }

cleanup:
 if (err != 0)
  (void) tcq_destroy_locked(tif);

 return (err);
}
