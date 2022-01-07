
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ u_quad_t ;
struct vnode {TYPE_1__* v_mount; } ;
struct vfsstatfs {int f_bfree; int f_blocks; unsigned long f_bsize; } ;
struct vfs_context {int dummy; } ;
struct timeval {int dummy; } ;
typedef scalar_t__ off_t ;
struct TYPE_6__ {scalar_t__ af_filesz; scalar_t__ af_currsz; } ;
struct TYPE_5__ {int aq_minfree; } ;
struct TYPE_4__ {struct vfsstatfs mnt_vfsstat; } ;


 int AUDIT_HARD_LIMIT_FREE_BLOCKS ;
 int AUDIT_TRIGGER_LOW_SPACE ;
 int AUDIT_TRIGGER_NO_SPACE ;
 int AUDIT_TRIGGER_ROTATE_KERNEL ;
 int AUDIT_WORKER_SX_ASSERT () ;
 int ENOSPC ;
 int IO_APPEND ;
 int IO_UNIT ;
 int MAX_AUDIT_RECORD_SIZE ;
 int MNT_WAIT ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int VFS_KERNEL_EVENT ;
 int VNOP_FSYNC (struct vnode*,int ,struct vfs_context*) ;
 scalar_t__ audit_fail_stop ;
 int audit_file_rotate_wait ;
 TYPE_3__ audit_fstat ;
 int audit_in_failure ;
 scalar_t__ audit_panic_on_write_fail ;
 int audit_pre_q_len ;
 int audit_q_len ;
 TYPE_2__ audit_qctrl ;
 int audit_send_trigger (int ) ;
 int audit_suspended ;
 int panic (char*,...) ;
 scalar_t__ ppsratecheck (struct timeval*,int*,int) ;
 int printf (char*,...) ;
 int vfs_context_proc (struct vfs_context*) ;
 int vfs_context_ucred (struct vfs_context*) ;
 int vfs_update_vfsstat (TYPE_1__*,struct vfs_context*,int ) ;
 int vn_rdwr (int ,struct vnode*,void*,size_t,scalar_t__,int ,int,int ,int *,int ) ;
 scalar_t__ vnode_getwithref (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 int vnode_size (struct vnode*,scalar_t__*,struct vfs_context*) ;

__attribute__((used)) static void
audit_record_write(struct vnode *vp, struct vfs_context *ctx, void *data,
    size_t len)
{
 static struct timeval last_lowspace_trigger;
 static struct timeval last_fail;
 static int cur_lowspace_trigger;
 struct vfsstatfs *mnt_stat;
 int error;
 static int cur_fail;
 uint64_t temp;
 off_t file_size;

 AUDIT_WORKER_SX_ASSERT();

 if (vp == ((void*)0))
  return;

 if (vnode_getwithref(vp))
  return ;

 mnt_stat = &vp->v_mount->mnt_vfsstat;






 error = vfs_update_vfsstat(vp->v_mount, ctx, VFS_KERNEL_EVENT);
 if (error)
  goto fail;
 error = vnode_size(vp, &file_size, ctx);
 if (error)
  goto fail;
 audit_fstat.af_currsz = (u_quad_t)file_size;
 if (mnt_stat->f_bfree < AUDIT_HARD_LIMIT_FREE_BLOCKS) {
  error = ENOSPC;
  goto fail_enospc;
 }






 if (audit_qctrl.aq_minfree != 0) {
  temp = mnt_stat->f_blocks / (100 / audit_qctrl.aq_minfree);
  if (mnt_stat->f_bfree < temp &&
      ppsratecheck(&last_lowspace_trigger,
      &cur_lowspace_trigger, 1))
    (void)audit_send_trigger(
        AUDIT_TRIGGER_LOW_SPACE);
 }






 if ((audit_fstat.af_filesz != 0) && (audit_file_rotate_wait == 0) &&
     ((u_quad_t)file_size >= audit_fstat.af_filesz)) {
  AUDIT_WORKER_SX_ASSERT();

  audit_file_rotate_wait = 1;
  (void)audit_send_trigger(AUDIT_TRIGGER_ROTATE_KERNEL);
 }
 if (audit_fail_stop) {
  if ((unsigned long)((audit_q_len + audit_pre_q_len + 1) *
      MAX_AUDIT_RECORD_SIZE) / mnt_stat->f_bsize >=
      (unsigned long)(mnt_stat->f_bfree)) {
   if (ppsratecheck(&last_fail, &cur_fail, 1))
    printf("audit_record_write: free space "
        "below size of audit queue, failing "
        "stop\n");
   audit_in_failure = 1;
  } else if (audit_in_failure) {





  }
 }

 error = vn_rdwr(UIO_WRITE, vp, data, len, (off_t)0, UIO_SYSSPACE,
     IO_APPEND|IO_UNIT, vfs_context_ucred(ctx), ((void*)0),
     vfs_context_proc(ctx));
 if (error == ENOSPC)
  goto fail_enospc;
 else if (error)
  goto fail;
 if (audit_in_failure) {
  if (audit_q_len == 0 && audit_pre_q_len == 0) {
   (void)VNOP_FSYNC(vp, MNT_WAIT, ctx);
   panic("Audit store overflow; record queue drained.");
  }
 }

 vnode_put(vp);
 return;

fail_enospc:





 if (audit_fail_stop) {
  (void)VNOP_FSYNC(vp, MNT_WAIT, ctx);
  panic("Audit log space exhausted and fail-stop set.");
 }
 (void)audit_send_trigger(AUDIT_TRIGGER_NO_SPACE);
 audit_suspended = 1;


fail:




 if (audit_panic_on_write_fail) {
  (void)VNOP_FSYNC(vp, MNT_WAIT, ctx);
  panic("audit_worker: write error %d\n", error);
 } else if (ppsratecheck(&last_fail, &cur_fail, 1))
  printf("audit_worker: write error %d\n", error);
 vnode_put(vp);
}
