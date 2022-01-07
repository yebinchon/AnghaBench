
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
struct TYPE_4__ {int debugid; size_t arg1; int arg2; int arg5; } ;
typedef TYPE_1__ kd_buf ;
typedef int caddr_t ;
struct TYPE_5__ {scalar_t__ enabled; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FWRITE ;
 int KDBG_RELEASE (int) ;
 int KDEBUG_ENABLE_TRACE ;
 int MNT_WAIT ;
 int O_CREAT ;
 int O_NOFOLLOW ;
 int RAW_VERSION1 ;
 int RAW_file_offset ;
 int TRACE_WRITING_EVENTS ;
 int VNOP_FSYNC (int ,int ,int ) ;
 int commpage_update_kdebug_state () ;
 int cpu_number () ;
 int current_proc () ;
 int current_thread () ;
 TYPE_3__ kd_ctrl_page ;
 int kdbg_read (int ,size_t*,int ,int ,int ) ;
 int kdbg_set_timestamp_and_cpu (TYPE_1__*,int ,int ) ;
 int kdbg_timestamp () ;
 int kdbg_write_thread_map (int ,int ) ;
 int kdbg_write_to_vnode (int ,int,int ,int ,int ) ;
 int kdebug_enable ;
 scalar_t__ ktrace_get_owning_pid () ;
 int ktrace_lock () ;
 int ktrace_unlock () ;
 int nkdbufs ;
 int sync (int ,void*,int*) ;
 int thread_tid (int ) ;
 int vfs_context_kernel () ;
 int vnode_close (int ,int,int ) ;
 scalar_t__ vnode_open (char const*,int,int,int ,int *,int ) ;

void
kdbg_dump_trace_to_file(const char *filename)
{
 vfs_context_t ctx;
 vnode_t vp;
 size_t write_size;
 int ret;

 ktrace_lock();

 if (!(kdebug_enable & KDEBUG_ENABLE_TRACE)) {
  goto out;
 }

 if (ktrace_get_owning_pid() != 0) {




  kdebug_enable = 0;
  kd_ctrl_page.enabled = 0;
  commpage_update_kdebug_state();
  goto out;
 }

 KDBG_RELEASE(TRACE_WRITING_EVENTS | DBG_FUNC_START);

 kdebug_enable = 0;
 kd_ctrl_page.enabled = 0;
 commpage_update_kdebug_state();

 ctx = vfs_context_kernel();

 if (vnode_open(filename, (O_CREAT | FWRITE | O_NOFOLLOW), 0600, 0, &vp, ctx)) {
  goto out;
 }

 kdbg_write_thread_map(vp, ctx);

 write_size = nkdbufs * sizeof(kd_buf);
 ret = kdbg_read(0, &write_size, vp, ctx, RAW_VERSION1);
 if (ret) {
  goto out_close;
 }





 ret = VNOP_FSYNC(vp, MNT_WAIT, ctx);




 kd_buf end_event = {
  .debugid = TRACE_WRITING_EVENTS | DBG_FUNC_END,
  .arg1 = write_size,
  .arg2 = ret,
  .arg5 = thread_tid(current_thread()),
 };
 kdbg_set_timestamp_and_cpu(&end_event, kdbg_timestamp(),
   cpu_number());


 (void)kdbg_write_to_vnode((caddr_t)&end_event, sizeof(kd_buf), vp, ctx,
   RAW_file_offset);

out_close:
 vnode_close(vp, FWRITE, ctx);
 sync(current_proc(), (void *)((void*)0), (int *)((void*)0));

out:
 ktrace_unlock();
}
