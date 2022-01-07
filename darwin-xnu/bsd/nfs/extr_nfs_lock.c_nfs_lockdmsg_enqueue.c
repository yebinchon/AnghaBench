
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ lm_xid; } ;
struct TYPE_12__ {TYPE_1__ lmr_msg; } ;
typedef TYPE_2__ LOCKD_MSG_REQUEST ;


 int TAILQ_INSERT_AFTER (int *,TYPE_2__*,TYPE_2__*,int ) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 TYPE_2__* TAILQ_LAST (int *,int ) ;
 TYPE_2__* TAILQ_PREV (TYPE_2__*,int ,int ) ;
 int lmr_next ;
 int nfs_lock_msg_queue ;
 int nfs_pendlockq ;

void
nfs_lockdmsg_enqueue(LOCKD_MSG_REQUEST *msgreq)
{
 LOCKD_MSG_REQUEST *mr;

 mr = TAILQ_LAST(&nfs_pendlockq, nfs_lock_msg_queue);
 if (!mr || (msgreq->lmr_msg.lm_xid > mr->lmr_msg.lm_xid)) {

  TAILQ_INSERT_TAIL(&nfs_pendlockq, msgreq, lmr_next);
  return;
 }

 while (mr && (msgreq->lmr_msg.lm_xid > mr->lmr_msg.lm_xid)) {
  mr = TAILQ_PREV(mr, nfs_lock_msg_queue, lmr_next);
 }
 if (mr) {
  TAILQ_INSERT_AFTER(&nfs_pendlockq, mr, msgreq, lmr_next);
 } else {
  TAILQ_INSERT_HEAD(&nfs_pendlockq, msgreq, lmr_next);
 }
}
