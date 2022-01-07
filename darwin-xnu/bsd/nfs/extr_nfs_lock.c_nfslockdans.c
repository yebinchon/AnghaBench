
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct lockd_ans {scalar_t__ la_version; int la_flags; scalar_t__ la_errno; int la_len; int la_start; int la_pid; int la_xid; } ;
typedef int proc_t ;
struct TYPE_8__ {int l_type; int l_len; int l_start; int l_pid; } ;
struct TYPE_9__ {int lm_flags; TYPE_1__ lm_fl; } ;
struct TYPE_10__ {scalar_t__ lmr_errno; int lmr_answered; TYPE_2__ lmr_msg; } ;
typedef TYPE_3__ LOCKD_MSG_REQUEST ;


 int EINVAL ;
 int EPIPE ;
 int F_RDLCK ;
 int F_UNLCK ;
 int F_WRLCK ;
 int LOCKD_ANS_DENIED_GRACE ;
 int LOCKD_ANS_GRANTED ;
 int LOCKD_ANS_LOCK_EXCL ;
 int LOCKD_ANS_LOCK_INFO ;
 scalar_t__ LOCKD_ANS_VERSION ;
 int LOCKD_MSG_CANCEL ;
 int LOCKD_MSG_DENIED_GRACE ;
 int LOCKD_MSG_TEST ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nfs_lock_mutex ;
 scalar_t__ nfs_lockdmsg_compare_to_answer (TYPE_3__*,struct lockd_ans*) ;
 TYPE_3__* nfs_lockdmsg_find_by_answer (struct lockd_ans*) ;
 TYPE_3__* nfs_lockdmsg_find_by_xid (int ) ;
 int proc_suser (int ) ;
 int wakeup (TYPE_3__*) ;

int
nfslockdans(proc_t p, struct lockd_ans *ansp)
{
 LOCKD_MSG_REQUEST *msgreq;
 int error;


 error = proc_suser(p);
 if (error)
  return (error);


 if (ansp->la_version != LOCKD_ANS_VERSION)
  return (EINVAL);

 lck_mtx_lock(nfs_lock_mutex);


 msgreq = nfs_lockdmsg_find_by_xid(ansp->la_xid);
 if (ansp->la_flags & LOCKD_ANS_GRANTED) {






  if (!msgreq || nfs_lockdmsg_compare_to_answer(msgreq, ansp))
   msgreq = nfs_lockdmsg_find_by_answer(ansp);




  if (msgreq && (msgreq->lmr_msg.lm_flags & LOCKD_MSG_CANCEL))
   msgreq = ((void*)0);
 }
 if (!msgreq) {
  lck_mtx_unlock(nfs_lock_mutex);
  return (EPIPE);
 }

 msgreq->lmr_errno = ansp->la_errno;
 if ((msgreq->lmr_msg.lm_flags & LOCKD_MSG_TEST) && msgreq->lmr_errno == 0) {
  if (ansp->la_flags & LOCKD_ANS_LOCK_INFO) {
   if (ansp->la_flags & LOCKD_ANS_LOCK_EXCL)
    msgreq->lmr_msg.lm_fl.l_type = F_WRLCK;
   else
    msgreq->lmr_msg.lm_fl.l_type = F_RDLCK;
   msgreq->lmr_msg.lm_fl.l_pid = ansp->la_pid;
   msgreq->lmr_msg.lm_fl.l_start = ansp->la_start;
   msgreq->lmr_msg.lm_fl.l_len = ansp->la_len;
  } else {
   msgreq->lmr_msg.lm_fl.l_type = F_UNLCK;
  }
 }
 if (ansp->la_flags & LOCKD_ANS_DENIED_GRACE)
  msgreq->lmr_msg.lm_flags |= LOCKD_MSG_DENIED_GRACE;

 msgreq->lmr_answered = 1;
 lck_mtx_unlock(nfs_lock_mutex);
 wakeup(msgreq);

 return (0);
}
