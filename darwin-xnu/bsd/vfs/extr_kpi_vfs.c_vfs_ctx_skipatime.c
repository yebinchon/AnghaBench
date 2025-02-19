
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef scalar_t__ thread_t ;
struct uthread {int uu_flag; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_lflag; int p_vfs_iopolicy; } ;


 int P_LRAGE_VNODES ;
 int P_VFS_IOPOLICY_ATIME_UPDATES ;
 int UT_ATIME_UPDATE ;
 int UT_RAGE_VNODES ;
 struct uthread* get_bsdthread_info (scalar_t__) ;
 TYPE_1__* vfs_context_proc (int ) ;
 scalar_t__ vfs_context_thread (int ) ;

int
vfs_ctx_skipatime (vfs_context_t ctx) {
 struct uthread *ut;
 proc_t proc;
 thread_t thr;

 proc = vfs_context_proc(ctx);
 thr = vfs_context_thread (ctx);


 if (thr && proc) {
  ut = get_bsdthread_info (thr);

  if (proc->p_lflag & P_LRAGE_VNODES) {
   return 1;
  }

  if (ut) {
   if (ut->uu_flag & (UT_RAGE_VNODES | UT_ATIME_UPDATE)) {
    return 1;
   }
  }

  if (proc->p_vfs_iopolicy & P_VFS_IOPOLICY_ATIME_UPDATES) {
   return 1;
  }
 }
 return 0;
}
