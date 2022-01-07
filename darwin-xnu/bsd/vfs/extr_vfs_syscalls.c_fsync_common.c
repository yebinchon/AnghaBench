
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct fsync_args {int fd; } ;
struct fileproc {int f_flags; } ;
typedef int proc_t ;
struct TYPE_9__ {int v_flag; scalar_t__ v_parent; } ;


 int ARG_VNODE1 ;
 int AUDIT_ARG (int ,TYPE_1__*,...) ;
 int FP_WRITTEN ;
 scalar_t__ NULLVP ;
 int VISNAMEDSTREAM ;
 int VNOP_FSYNC (TYPE_1__*,int,int ) ;
 int fd ;
 int file_drop (int ) ;
 int fp_getfvp (int ,int ,struct fileproc**,TYPE_1__**) ;
 int vfs_context_current () ;
 int vnode_flushnamedstream (scalar_t__,TYPE_1__*,int ) ;
 int vnode_getwithref (TYPE_1__*) ;
 scalar_t__ vnode_isshadow (TYPE_1__*) ;
 int vnode_put (TYPE_1__*) ;
 int vnpath ;

__attribute__((used)) static int
fsync_common(proc_t p, struct fsync_args *uap, int flags)
{
 vnode_t vp;
 struct fileproc *fp;
 vfs_context_t ctx = vfs_context_current();
 int error;

 AUDIT_ARG(fd, uap->fd);

 if ( (error = fp_getfvp(p, uap->fd, &fp, &vp)) )
  return (error);
 if ( (error = vnode_getwithref(vp)) ) {
  file_drop(uap->fd);
  return(error);
 }

 AUDIT_ARG(vnpath, vp, ARG_VNODE1);

 error = VNOP_FSYNC(vp, flags, ctx);
 (void)vnode_put(vp);
 file_drop(uap->fd);
 return (error);
}
