
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int * thread_t ;
struct sockbuf {int sb_flags; scalar_t__ sb_wantlock; scalar_t__ sb_cfil_refs; int * sb_cfil_thread; } ;
struct socket {TYPE_2__* so_proto; struct sockbuf so_rcv; struct sockbuf so_snd; } ;
struct cfil_info {int cfi_flags; } ;
typedef int lck_mtx_t ;
struct TYPE_4__ {TYPE_1__* pr_domain; int * (* pr_getlock ) (struct socket*,int ) ;} ;
struct TYPE_3__ {int * dom_mtx; } ;


 int CFIF_DROP ;
 int CFIL_LOG (int ,char*,int ) ;
 int EPIPE ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LOG_ERR ;
 int PR_F_WILLUNLOCK ;
 int PSOCK ;
 int SB_LOCK ;
 int VERIFY (int) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int * current_thread () ;
 int msleep (int*,int *,int ,char*,int *) ;
 int * stub1 (struct socket*,int ) ;

__attribute__((used)) static int
cfil_acquire_sockbuf(struct socket *so, struct cfil_info *cfil_info, int outgoing)
{
 thread_t tp = current_thread();
 struct sockbuf *sb = outgoing ? &so->so_snd : &so->so_rcv;
 lck_mtx_t *mutex_held;
 int error = 0;





 while ((sb->sb_flags & SB_LOCK) ||
  (sb->sb_cfil_thread != ((void*)0) && sb->sb_cfil_thread != tp)) {
  if (so->so_proto->pr_getlock != ((void*)0))
   mutex_held = (*so->so_proto->pr_getlock)(so, PR_F_WILLUNLOCK);
  else
   mutex_held = so->so_proto->pr_domain->dom_mtx;

  LCK_MTX_ASSERT(mutex_held, LCK_MTX_ASSERT_OWNED);

  sb->sb_wantlock++;
  VERIFY(sb->sb_wantlock != 0);

  msleep(&sb->sb_flags, mutex_held, PSOCK, "cfil_acquire_sockbuf",
   ((void*)0));

  VERIFY(sb->sb_wantlock != 0);
  sb->sb_wantlock--;
 }



 if (sb->sb_cfil_refs == 0) {
  VERIFY(sb->sb_cfil_thread == ((void*)0));
  VERIFY((sb->sb_flags & SB_LOCK) == 0);

  sb->sb_cfil_thread = tp;
  sb->sb_flags |= SB_LOCK;
 }
 sb->sb_cfil_refs++;


 if (cfil_info == ((void*)0)) {
  CFIL_LOG(LOG_ERR, "so %llx cfil detached",
   (uint64_t)VM_KERNEL_ADDRPERM(so));
  error = 0;
 } else if (cfil_info->cfi_flags & CFIF_DROP) {
  CFIL_LOG(LOG_ERR, "so %llx drop set",
   (uint64_t)VM_KERNEL_ADDRPERM(so));
  error = EPIPE;
 }

 return (error);
}
