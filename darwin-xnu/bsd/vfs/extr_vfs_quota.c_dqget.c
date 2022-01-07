
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct vnode {int dummy; } ;
struct timeval {scalar_t__ tv_sec; } ;
struct quotafile {scalar_t__ qf_btime; scalar_t__ qf_itime; struct vnode* qf_vp; } ;
struct TYPE_2__ {struct dquot* le_next; } ;
struct dquot {scalar_t__ dq_id; int dq_cnt; int dq_flags; int dq_type; scalar_t__ dq_isoftlimit; scalar_t__ dq_bsoftlimit; scalar_t__ dq_ihardlimit; scalar_t__ dq_bhardlimit; scalar_t__ dq_btime; scalar_t__ dq_itime; struct quotafile* dq_qfile; int dq_index; int dq_dqb; TYPE_1__ dq_hash; } ;
struct dqhash {struct dquot* lh_first; } ;


 struct dqhash* DQHASH (struct vnode*,scalar_t__) ;
 scalar_t__ DQUOTINC ;
 int DQ_FAKE ;
 int DQ_MOD ;
 int EINVAL ;
 int EUSERS ;
 int LIST_INSERT_HEAD (struct dqhash*,struct dquot*,int ) ;
 int LIST_REMOVE (struct dquot*,int ) ;
 int MAXQUOTAS ;
 int M_DQUOT ;
 int M_WAITOK ;
 struct dquot* NODQUOT ;
 struct vnode* NULLVP ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct dquot* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct dquot*,int ) ;
 int TAILQ_REMOVE (int *,struct dquot*,int ) ;
 int _FREE (struct dquot*,int ) ;
 scalar_t__ _MALLOC (int,int ,int ) ;
 int bzero (char*,int) ;
 int desireddquot ;
 int desiredvnodes ;
 int dq_freelist ;
 int dq_hash ;
 int dq_list_lock () ;
 scalar_t__ dq_list_lock_changed (int) ;
 int dq_list_lock_val () ;
 int dq_list_unlock () ;
 int dq_lock_internal (struct dquot*) ;
 int dq_unlock_internal (struct dquot*) ;
 int dqdirtylist ;
 int dqfreelist ;
 int dqisinitialized () ;
 int dqlookup (struct quotafile*,scalar_t__,int *,int *) ;
 int dqrele (struct dquot*) ;
 int microtime (struct timeval*) ;
 int numdquot ;
 scalar_t__ qf_ref (struct quotafile*) ;
 int qf_rele (struct quotafile*) ;
 int tablefull (char*) ;

int
dqget(u_int32_t id, struct quotafile *qfp, int type, struct dquot **dqp)
{
 struct dquot *dq;
 struct dquot *ndq = ((void*)0);
 struct dquot *fdq = ((void*)0);
 struct dqhash *dqh;
 struct vnode *dqvp;
 int error = 0;
 int listlockval = 0;

 if (!dqisinitialized()) {
  *dqp = NODQUOT;
  return (EINVAL);
 }

 if ( id == 0 || qfp->qf_vp == NULLVP ) {
  *dqp = NODQUOT;
  return (EINVAL);
 }
 dq_list_lock();

 if ( (qf_ref(qfp)) ) {
         dq_list_unlock();

  *dqp = NODQUOT;
  return (EINVAL);
 }
 if ( (dqvp = qfp->qf_vp) == NULLVP ) {
         qf_rele(qfp);
  dq_list_unlock();

  *dqp = NODQUOT;
  return (EINVAL);
 }
 dqh = DQHASH(dqvp, id);

relookup:
 listlockval = dq_list_lock_val();




 for (dq = dqh->lh_first; dq; dq = dq->dq_hash.le_next) {
  if (dq->dq_id != id ||
      dq->dq_qfile->qf_vp != dqvp)
   continue;

  dq_lock_internal(dq);
  if (dq_list_lock_changed(listlockval)) {
   dq_unlock_internal(dq);
   goto relookup;
  }





  if (dq->dq_id != id || dq->dq_qfile == ((void*)0) ||
      dq->dq_qfile->qf_vp != dqvp) {
          dq_unlock_internal(dq);
   goto relookup;
  }




  if (dq->dq_cnt++ == 0) {
   if (dq->dq_flags & DQ_MOD)
    TAILQ_REMOVE(&dqdirtylist, dq, dq_freelist);
   else
    TAILQ_REMOVE(&dqfreelist, dq, dq_freelist);
  }
  dq_unlock_internal(dq);

  if (fdq != ((void*)0)) {






          TAILQ_INSERT_HEAD(&dqfreelist, fdq, dq_freelist);
  }
  qf_rele(qfp);
         dq_list_unlock();

  if (ndq != ((void*)0)) {





          _FREE(ndq, M_DQUOT);
  }
  *dqp = dq;

  return (0);
 }



 if (TAILQ_EMPTY(&dqfreelist) &&
     numdquot < MAXQUOTAS * desiredvnodes)
  desireddquot += DQUOTINC;

 if (fdq != ((void*)0)) {





         dq = fdq;
  fdq = ((void*)0);
 } else if (numdquot < desireddquot) {
         if (ndq == ((void*)0)) {



          dq_list_unlock();

   ndq = (struct dquot *)_MALLOC(sizeof *dq, M_DQUOT, M_WAITOK);
   bzero((char *)ndq, sizeof *dq);

          listlockval = dq_list_lock();





   goto relookup;
  } else {





          dq = ndq;
   ndq = ((void*)0);
   numdquot++;
  }
 } else {
         if (TAILQ_EMPTY(&dqfreelist)) {
          qf_rele(qfp);
          dq_list_unlock();

   if (ndq) {





           _FREE(ndq, M_DQUOT);
   }
   tablefull("dquot");
   *dqp = NODQUOT;
   return (EUSERS);
  }
  dq = TAILQ_FIRST(&dqfreelist);

  dq_lock_internal(dq);

  if (dq_list_lock_changed(listlockval) || dq->dq_cnt || (dq->dq_flags & DQ_MOD)) {






          dq_unlock_internal(dq);






   goto relookup;
  }
  TAILQ_REMOVE(&dqfreelist, dq, dq_freelist);

  if (dq->dq_qfile != ((void*)0)) {
          LIST_REMOVE(dq, dq_hash);
   dq->dq_qfile = ((void*)0);
   dq->dq_id = 0;
  }
  dq_unlock_internal(dq);
  fdq = dq;
  goto relookup;
 }







 dq_lock_internal(dq);
 if (dq_list_lock_changed(listlockval)) {
  dq_unlock_internal(dq);
  goto relookup;
 }




 dq->dq_cnt = 1;
 dq->dq_flags = 0;
 dq->dq_id = id;
 dq->dq_qfile = qfp;
 dq->dq_type = type;
 LIST_INSERT_HEAD(dqh, dq, dq_hash);
 dq_list_unlock();

 if (ndq) {





         _FREE(ndq, M_DQUOT);
 }

 error = dqlookup(qfp, id, &dq->dq_dqb, &dq->dq_index);





 if (error) {
         dq_list_lock();

  dq->dq_id = 0;
  dq->dq_qfile = ((void*)0);
  LIST_REMOVE(dq, dq_hash);

  dq_unlock_internal(dq);
  qf_rele(qfp);
         dq_list_unlock();

  dqrele(dq);

  *dqp = NODQUOT;
  return (error);
 }




 if (dq->dq_isoftlimit == 0 && dq->dq_bsoftlimit == 0 &&
     dq->dq_ihardlimit == 0 && dq->dq_bhardlimit == 0)
  dq->dq_flags |= DQ_FAKE;
 if (dq->dq_id != 0) {
  struct timeval tv;

  microtime(&tv);
  if (dq->dq_btime == 0)
   dq->dq_btime = tv.tv_sec + qfp->qf_btime;
  if (dq->dq_itime == 0)
   dq->dq_itime = tv.tv_sec + qfp->qf_itime;
 }
 dq_list_lock();
 dq_unlock_internal(dq);
 qf_rele(qfp);
 dq_list_unlock();

 *dqp = dq;
 return (0);
}
