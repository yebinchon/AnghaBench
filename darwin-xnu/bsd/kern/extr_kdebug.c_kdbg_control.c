
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef struct vnode* vnode_t ;
typedef int user_addr_t ;
typedef int u_int ;
struct vnode {int dummy; } ;
struct vfs_context {int vc_ucred; int vc_thread; } ;
struct fileproc {TYPE_5__* f_fglob; } ;
typedef int proc_t ;
typedef int kd_threadmap ;
typedef int kd_regtype ;
typedef int kd_bufinfo ;
typedef int kd_buf ;
struct TYPE_6__ {int nkdbufs; int nkdthreads; int nolog; int flags; int bufid; } ;
typedef TYPE_1__ kbufinfo_t ;
struct TYPE_8__ {int fg_offset; scalar_t__ fg_data; int fg_cred; } ;
struct TYPE_7__ {int kdebug_flags; int kdebug_slowcheck; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DTYPE_VNODE ;
 int EBADF ;
 int EINVAL ;
 int FALSE ;
 int FILEGLOB_DTYPE (TYPE_5__*) ;
 int KDBG_BUFINIT ;
 int KDBG_LOCKINIT ;
 int KDBG_LP64 ;
 int KDBG_RELEASE (int,...) ;
 unsigned int KDBG_USERFLAGS ;
 unsigned int KDEBUG_ENABLE_PPT ;
 unsigned int KDEBUG_ENABLE_TRACE ;
 int KTRACE_KDEBUG ;
 int RAW_VERSION1 ;
 int RAW_VERSION3 ;
 int RAW_file_offset ;
 int SLOW_NOLOG ;
 int TRACE_WRITING_EVENTS ;
 int TRUE ;
 int assert (int) ;
 int copyin (int ,int *,int) ;
 int copyout (TYPE_1__*,int ,size_t) ;
 int current_proc () ;
 int current_thread () ;
 int fp_drop (int ,int,struct fileproc*,int) ;
 int fp_lookup (int ,int,struct fileproc**,int) ;
 TYPE_3__ kd_ctrl_page ;
 int kd_mapcount ;
 int kdbg_copyin_typefilter (int ,size_t) ;
 int kdbg_copyout_thread_map (int ,size_t*) ;
 int kdbg_lock_init () ;
 int kdbg_read (int ,size_t*,struct vnode*,struct vfs_context*,int ) ;
 int kdbg_readcpumap (int ,size_t*) ;
 int kdbg_readcurthrmap (int ,size_t*) ;
 int kdbg_readthrmap_v3 (int ,size_t,int) ;
 int kdbg_reinit (int ) ;
 int kdbg_set_nkdbufs (unsigned int) ;
 int kdbg_set_tracing_enabled (int ,unsigned int) ;
 int kdbg_setpid (int *) ;
 int kdbg_setpidex (int *) ;
 int kdbg_setreg (int *) ;
 int kdbg_test (size_t) ;
 int kdbg_thrmap_init () ;
 size_t kdbg_wait (size_t,int ) ;
 int kdbg_write_thread_map (struct vnode*,struct vfs_context*) ;
 int kdebug_enable ;
 int kernel_debug_disable () ;
 int ktrace_configure (int ) ;
 int ktrace_get_owning_pid () ;
 int ktrace_lock () ;
 int ktrace_read_check () ;
 int ktrace_reset (int ) ;
 int ktrace_unlock () ;
 int memset (TYPE_1__*,int ,int) ;
 int nkdbufs ;
 int proc_fdlock (int ) ;
 int proc_fdunlock (int ) ;
 int vnode_getwithref (struct vnode*) ;
 int vnode_put (struct vnode*) ;

int
kdbg_control(int *name, u_int namelen, user_addr_t where, size_t *sizep)
{
 int ret = 0;
 size_t size = *sizep;
 unsigned int value = 0;
 kd_regtype kd_Reg;
 kbufinfo_t kd_bufinfo;
 proc_t p;

 if (name[0] == 129 ||
  name[0] == 128 ||
  name[0] == 131 ||
  name[0] == 130 ||
  name[0] == 146 ||
  name[0] == 147 ||
  name[0] == 145 ||
  name[0] == 137)
 {
  if (namelen < 2) {
   return EINVAL;
  }
  value = name[1];
 }

 kdbg_lock_init();
 assert(kd_ctrl_page.kdebug_flags & KDBG_LOCKINIT);

 ktrace_lock();






 if (name[0] != 144 &&
     name[0] != 143 &&
     name[0] != 140)
 {
  if ((ret = ktrace_configure(KTRACE_KDEBUG))) {
   goto out;
  }
 } else {
  if ((ret = ktrace_read_check())) {
   goto out;
  }
 }

 switch(name[0]) {
  case 144:
   if (size < sizeof(kd_bufinfo.nkdbufs)) {




    ret = EINVAL;
    break;
   }

   memset(&kd_bufinfo, 0, sizeof(kd_bufinfo));

   kd_bufinfo.nkdbufs = nkdbufs;
   kd_bufinfo.nkdthreads = kd_mapcount;

   if ( (kd_ctrl_page.kdebug_slowcheck & SLOW_NOLOG) )
    kd_bufinfo.nolog = 1;
   else
    kd_bufinfo.nolog = 0;

   kd_bufinfo.flags = kd_ctrl_page.kdebug_flags;

   kd_bufinfo.flags |= KDBG_LP64;

   {
    int pid = ktrace_get_owning_pid();
    kd_bufinfo.bufid = (pid == 0 ? -1 : pid);
   }

   if (size >= sizeof(kd_bufinfo)) {



    if (copyout(&kd_bufinfo, where, sizeof(kd_bufinfo)))
     ret = EINVAL;
   } else {




    if (copyout(&kd_bufinfo, where, size))
     ret = EINVAL;
   }
   break;

  case 140:
   ret = kdbg_readcurthrmap(where, sizep);
   break;

  case 146:
   value &= KDBG_USERFLAGS;
   kd_ctrl_page.kdebug_flags |= value;
   break;

  case 147:
   value &= KDBG_USERFLAGS;
   kd_ctrl_page.kdebug_flags &= ~value;
   break;

  case 145:






   if (value) {



    if (!(kd_ctrl_page.kdebug_flags & KDBG_BUFINIT) ||
        !(value == KDEBUG_ENABLE_TRACE || value == KDEBUG_ENABLE_PPT)) {
     ret = EINVAL;
     break;
    }
    kdbg_thrmap_init();

    kdbg_set_tracing_enabled(TRUE, value);
   }
   else
   {
    if (!kdebug_enable) {
     break;
    }

    kernel_debug_disable();
   }
   break;

  case 137:
   kdbg_set_nkdbufs(value);
   break;

  case 135:
   ret = kdbg_reinit(FALSE);
   break;

  case 138:
   ktrace_reset(KTRACE_KDEBUG);
   break;

  case 136:
   if(size < sizeof(kd_regtype)) {
    ret = EINVAL;
    break;
   }
   if (copyin(where, &kd_Reg, sizeof(kd_regtype))) {
    ret = EINVAL;
    break;
   }

   ret = kdbg_setreg(&kd_Reg);
   break;

  case 143:
   ret = EINVAL;
   break;

  case 139:
   ret = kdbg_read(where, sizep, ((void*)0), ((void*)0), RAW_VERSION1);
   break;

  case 129:
  case 128:
  case 131:
  case 130:
  {
   struct vfs_context context;
   struct fileproc *fp;
   size_t number;
   vnode_t vp;
   int fd;

   if (name[0] == 129 || name[0] == 128) {
    (void)kdbg_wait(size, TRUE);
   }
   p = current_proc();
   fd = value;

   proc_fdlock(p);
   if ( (ret = fp_lookup(p, fd, &fp, 1)) ) {
    proc_fdunlock(p);
    break;
   }
   context.vc_thread = current_thread();
   context.vc_ucred = fp->f_fglob->fg_cred;

   if (FILEGLOB_DTYPE(fp->f_fglob) != DTYPE_VNODE) {
    fp_drop(p, fd, fp, 1);
    proc_fdunlock(p);

    ret = EBADF;
    break;
   }
   vp = (struct vnode *)fp->f_fglob->fg_data;
   proc_fdunlock(p);

   if ((ret = vnode_getwithref(vp)) == 0) {
    RAW_file_offset = fp->f_fglob->fg_offset;
    if (name[0] == 129 || name[0] == 128) {
     number = nkdbufs * sizeof(kd_buf);

     KDBG_RELEASE(TRACE_WRITING_EVENTS | DBG_FUNC_START);
     if (name[0] == 128)
      ret = kdbg_read(0, &number, vp, &context, RAW_VERSION3);
     else
      ret = kdbg_read(0, &number, vp, &context, RAW_VERSION1);
     KDBG_RELEASE(TRACE_WRITING_EVENTS | DBG_FUNC_END, number);

     *sizep = number;
    } else {
     number = kd_mapcount * sizeof(kd_threadmap);
     if (name[0] == 130) {
      ret = kdbg_readthrmap_v3(0, number, fd);
     } else {
      ret = kdbg_write_thread_map(vp, &context);
     }
    }
    fp->f_fglob->fg_offset = RAW_file_offset;
    vnode_put(vp);
   }
   fp_drop(p, fd, fp, 0);

   break;
  }
  case 149:
   *sizep = kdbg_wait(size, FALSE);
   break;

  case 141:
   if (size < sizeof(kd_regtype)) {
    ret = EINVAL;
    break;
   }
   if (copyin(where, &kd_Reg, sizeof(kd_regtype))) {
    ret = EINVAL;
    break;
   }

   ret = kdbg_setpid(&kd_Reg);
   break;

  case 142:
   if (size < sizeof(kd_regtype)) {
    ret = EINVAL;
    break;
   }
   if (copyin(where, &kd_Reg, sizeof(kd_regtype))) {
    ret = EINVAL;
    break;
   }

   ret = kdbg_setpidex(&kd_Reg);
   break;

  case 148:
   ret = kdbg_readcpumap(where, sizep);
   break;

  case 132:
   ret = kdbg_copyout_thread_map(where, sizep);
   break;

  case 134: {
   ret = kdbg_copyin_typefilter(where, size);
   break;
  }

  case 133:
   ret = kdbg_test(size);
   break;

  default:
   ret = EINVAL;
   break;
 }
out:
 ktrace_unlock();

 return ret;
}
