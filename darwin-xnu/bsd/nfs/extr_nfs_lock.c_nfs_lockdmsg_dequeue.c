
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOCKD_MSG_REQUEST ;


 int TAILQ_REMOVE (int *,int *,int ) ;
 int lmr_next ;
 int nfs_pendlockq ;

void
nfs_lockdmsg_dequeue(LOCKD_MSG_REQUEST *msgreq)
{
 TAILQ_REMOVE(&nfs_pendlockq, msgreq, lmr_next);
}
