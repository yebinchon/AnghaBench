
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef struct vnode* vnode_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct vnode {int dummy; } ;
struct vfs_context {int vc_ucred; int vc_thread; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
typedef int proc_t ;
struct TYPE_3__ {scalar_t__ length; int sub_tag; int tag; } ;
typedef TYPE_1__ kd_chunk_header_v3 ;
typedef int caddr_t ;
struct TYPE_4__ {int fg_offset; scalar_t__ fg_data; int fg_cred; } ;


 scalar_t__ DTYPE_VNODE ;
 int EBADF ;
 int EFAULT ;
 scalar_t__ FILEGLOB_DTYPE (TYPE_2__*) ;
 int KERN_SUCCESS ;
 int RAW_file_offset ;
 int current_proc () ;
 int current_thread () ;
 int fp_drop (int ,int,struct fileproc*,int) ;
 scalar_t__ fp_lookup (int ,int,struct fileproc**,int) ;
 int kdbg_write_to_vnode (int ,size_t,struct vnode*,struct vfs_context*,int) ;
 int proc_fdlock (int ) ;
 int proc_fdunlock (int ) ;
 scalar_t__ vnode_getwithref (struct vnode*) ;
 int vnode_put (struct vnode*) ;

int
kdbg_write_v3_chunk_to_fd(uint32_t tag, uint32_t sub_tag, uint64_t length, void *payload, uint64_t payload_size, int fd)
{
 proc_t p;
 struct vfs_context context;
 struct fileproc *fp;
 vnode_t vp;
 p = current_proc();

 proc_fdlock(p);
 if ( (fp_lookup(p, fd, &fp, 1)) ) {
  proc_fdunlock(p);
  return EFAULT;
 }

 context.vc_thread = current_thread();
 context.vc_ucred = fp->f_fglob->fg_cred;

 if (FILEGLOB_DTYPE(fp->f_fglob) != DTYPE_VNODE) {
  fp_drop(p, fd, fp, 1);
  proc_fdunlock(p);
  return EBADF;
 }
 vp = (struct vnode *) fp->f_fglob->fg_data;
 proc_fdunlock(p);

 if ( (vnode_getwithref(vp)) == 0 ) {
  RAW_file_offset = fp->f_fglob->fg_offset;

  kd_chunk_header_v3 chunk_header = {
   .tag = tag,
   .sub_tag = sub_tag,
   .length = length,
  };

  int ret = kdbg_write_to_vnode((caddr_t) &chunk_header, sizeof(kd_chunk_header_v3), vp, &context, RAW_file_offset);
  if (!ret) {
   RAW_file_offset += sizeof(kd_chunk_header_v3);
  }

  ret = kdbg_write_to_vnode((caddr_t) payload, (size_t) payload_size, vp, &context, RAW_file_offset);
  if (!ret) {
   RAW_file_offset += payload_size;
  }

  fp->f_fglob->fg_offset = RAW_file_offset;
  vnode_put(vp);
 }

 fp_drop(p, fd, fp, 0);
 return KERN_SUCCESS;
}
