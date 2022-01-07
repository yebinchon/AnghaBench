
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct socket {int so_flags; TYPE_3__* so_cfil; TYPE_2__* so_proto; } ;
typedef int lck_mtx_t ;
typedef int caddr_t ;
struct TYPE_8__ {int cfs_close_wait_timeout; int cfs_close_wait; } ;
struct TYPE_7__ {int cfi_flags; } ;
struct TYPE_6__ {TYPE_1__* pr_domain; int * (* pr_getlock ) (struct socket*,int ) ;} ;
struct TYPE_5__ {int * dom_mtx; } ;


 int CFIF_CLOSE_WAIT ;
 int CFIL_LOG (int ,char*,int ,...) ;
 scalar_t__ IS_UDP (struct socket*) ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LOG_INFO ;
 int LOG_NOTICE ;
 int NSEC_PER_USEC ;
 int OSIncrementAtomic (int *) ;
 int PCATCH ;
 int PR_F_WILLUNLOCK ;
 int PSOCK ;
 int SHUT_RDWR ;
 int SOF_CONTENT_FILTER ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int cfil_close_wait_timeout ;
 scalar_t__ cfil_filters_attached (struct socket*) ;
 int cfil_sock_notify_shutdown (struct socket*,int ) ;
 int cfil_sock_udp_close_wait (struct socket*) ;
 TYPE_4__ cfil_stats ;
 int msleep (int ,int *,int,char*,struct timespec*) ;
 int * stub1 (struct socket*,int ) ;

void
cfil_sock_close_wait(struct socket *so)
{
 lck_mtx_t *mutex_held;
 struct timespec ts;
 int error;

 if (IS_UDP(so)) {
  cfil_sock_udp_close_wait(so);
  return;
 }

 if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == ((void*)0))
  return;

 CFIL_LOG(LOG_INFO, "so %llx", (uint64_t)VM_KERNEL_ADDRPERM(so));

 if (so->so_proto->pr_getlock != ((void*)0))
  mutex_held = (*so->so_proto->pr_getlock)(so, PR_F_WILLUNLOCK);
 else
  mutex_held = so->so_proto->pr_domain->dom_mtx;
 LCK_MTX_ASSERT(mutex_held, LCK_MTX_ASSERT_OWNED);

 while (cfil_filters_attached(so)) {



  cfil_sock_notify_shutdown(so, SHUT_RDWR);





  if (cfil_filters_attached(so) == 0)
   break;

  CFIL_LOG(LOG_INFO, "so %llx waiting",
   (uint64_t)VM_KERNEL_ADDRPERM(so));

  ts.tv_sec = cfil_close_wait_timeout / 1000;
  ts.tv_nsec = (cfil_close_wait_timeout % 1000) *
   NSEC_PER_USEC * 1000;

  OSIncrementAtomic(&cfil_stats.cfs_close_wait);
  so->so_cfil->cfi_flags |= CFIF_CLOSE_WAIT;
  error = msleep((caddr_t)so->so_cfil, mutex_held,
   PSOCK | PCATCH, "cfil_sock_close_wait", &ts);
  so->so_cfil->cfi_flags &= ~CFIF_CLOSE_WAIT;

  CFIL_LOG(LOG_NOTICE, "so %llx timed out %d",
   (uint64_t)VM_KERNEL_ADDRPERM(so), (error != 0));




  if (error != 0) {
   OSIncrementAtomic(&cfil_stats.cfs_close_wait_timeout);
   break;
  }
 }

}
