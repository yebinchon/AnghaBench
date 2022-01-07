
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct TYPE_4__ {int lm_xid; } ;
struct TYPE_5__ {TYPE_1__ lmr_msg; } ;
typedef TYPE_2__ LOCKD_MSG_REQUEST ;


 TYPE_2__* TAILQ_LAST (int *,int ) ;
 int microtime (struct timeval*) ;
 int nfs_lock_msg_queue ;
 scalar_t__ nfs_lockdmsg_find_by_xid (int) ;
 int nfs_lockxid ;
 int nfs_pendlockq ;

uint64_t
nfs_lockxid_get(void)
{
 LOCKD_MSG_REQUEST *mr;


 if (!nfs_lockxid) {






  struct timeval tv;
  microtime(&tv);
  nfs_lockxid = (uint64_t)tv.tv_sec << 12;
 }


 do {

  if (++nfs_lockxid == 0)
   nfs_lockxid++;
  if (!(mr = TAILQ_LAST(&nfs_pendlockq, nfs_lock_msg_queue)) ||
       (mr->lmr_msg.lm_xid < nfs_lockxid)) {

   break;
  }

 } while (nfs_lockdmsg_find_by_xid(nfs_lockxid));

 return nfs_lockxid;
}
