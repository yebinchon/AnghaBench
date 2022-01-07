
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_if {int qif_maxclasses; int * qif_groups; int * qif_class_tbl; int qif_maxslots; int * qif_ifq; } ;
struct qfq_group {int dummy; } ;
struct qfq_class {int dummy; } ;
struct ifnet {int if_snd; } ;


 int IFCQ_SC_MAX ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int QFQ_MAX_INDEX ;
 int QFQ_MAX_SLOTS ;
 int _FREE (int *,int ) ;
 void* _MALLOC (int,int ,int) ;
 int bzero (struct qfq_if*,int ) ;
 int if_name (struct ifnet*) ;
 int log (int ,char*,int ,int ) ;
 scalar_t__ pktsched_verbose ;
 int qfq_size ;
 int qfq_style (struct qfq_if*) ;
 int qfq_zone ;
 struct qfq_if* zalloc (int ) ;
 struct qfq_if* zalloc_noblock (int ) ;
 int zfree (int ,struct qfq_if*) ;

struct qfq_if *
qfq_alloc(struct ifnet *ifp, int how)
{
 struct qfq_if *qif;

 qif = (how == M_WAITOK) ? zalloc(qfq_zone) : zalloc_noblock(qfq_zone);
 if (qif == ((void*)0))
  return (((void*)0));

 bzero(qif, qfq_size);
 qif->qif_ifq = &ifp->if_snd;

 qif->qif_maxclasses = IFCQ_SC_MAX;
 qif->qif_maxslots = QFQ_MAX_SLOTS;

 if ((qif->qif_class_tbl = _MALLOC(sizeof (struct qfq_class *) *
     qif->qif_maxclasses, M_DEVBUF, M_WAITOK|M_ZERO)) == ((void*)0)) {
  log(LOG_ERR, "%s: %s unable to allocate class table array\n",
      if_name(ifp), qfq_style(qif));
  goto error;
 }

 if ((qif->qif_groups = _MALLOC(sizeof (struct qfq_group *) *
     (QFQ_MAX_INDEX + 1), M_DEVBUF, M_WAITOK|M_ZERO)) == ((void*)0)) {
  log(LOG_ERR, "%s: %s unable to allocate group array\n",
      if_name(ifp), qfq_style(qif));
  goto error;
 }

 if (pktsched_verbose) {
  log(LOG_DEBUG, "%s: %s scheduler allocated\n",
      if_name(ifp), qfq_style(qif));
 }

 return (qif);

error:
 if (qif->qif_class_tbl != ((void*)0)) {
  _FREE(qif->qif_class_tbl, M_DEVBUF);
  qif->qif_class_tbl = ((void*)0);
 }
 if (qif->qif_groups != ((void*)0)) {
  _FREE(qif->qif_groups, M_DEVBUF);
  qif->qif_groups = ((void*)0);
 }
 zfree(qfq_zone, qif);

 return (((void*)0));
}
