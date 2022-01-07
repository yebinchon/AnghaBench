
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
typedef int proc_t ;
typedef size_t off_t ;
typedef int kauth_cred_t ;
typedef int caddr_t ;


 int AUTHPRNT (char*,...) ;
 int CAST_USER_ADDR_T (char const*) ;
 int EINVAL ;
 int ENOMEM ;
 int FREAD ;
 int IO_NODELOCKED ;
 int LOCKLEAF ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int ,int ,int ,int ) ;
 int OP_OPEN ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VNOP_CLOSE (struct vnode*,int ,int ) ;
 int VNOP_OPEN (struct vnode*,int ,int ) ;
 char* kalloc (size_t) ;
 int kfree_safe (char*) ;
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;
 int panic (char*) ;
 int vfs_context_kernel () ;
 int vfs_context_proc (int ) ;
 int vfs_context_ucred (int ) ;
 int vn_rdwr (int ,struct vnode*,int ,size_t,int ,int ,int ,int ,int*,int ) ;
 int vnode_put (struct vnode*) ;
 int vnode_size (struct vnode*,size_t*,int ) ;

__attribute__((used)) static int
read_file(const char *path, void **bufp, size_t *bufszp)
{
 int err = 0;
 struct nameidata ndp = {};
 struct vnode *vp = ((void*)0);
 off_t fsize = 0;
 int resid = 0;
 char *buf = ((void*)0);
 bool doclose = 0;

 vfs_context_t ctx = vfs_context_kernel();
 proc_t p = vfs_context_proc(ctx);
 kauth_cred_t kerncred = vfs_context_ucred(ctx);

 NDINIT(&ndp, LOOKUP, OP_OPEN, LOCKLEAF, UIO_SYSSPACE, CAST_USER_ADDR_T(path), ctx);
 if ((err = namei(&ndp)) != 0) {
  AUTHPRNT("namei failed (%s)", path);
  goto out;
 }
 nameidone(&ndp);
 vp = ndp.ni_vp;

 if ((err = vnode_size(vp, &fsize, ctx)) != 0) {
  AUTHPRNT("failed to get vnode size");
  goto out;
 }
 if (fsize < 0) {
  panic("negative file size");
 }

 if ((err = VNOP_OPEN(vp, FREAD, ctx)) != 0) {
  AUTHPRNT("failed to open vnode");
  goto out;
 }
 doclose = 1;


 if (*bufszp && *bufszp < (size_t)fsize) {
  fsize = *bufszp;
 }

 buf = kalloc(fsize);
 if (buf == ((void*)0)) {
  err = ENOMEM;
  goto out;
 }

 if ((err = vn_rdwr(UIO_READ, vp, (caddr_t)buf, fsize, 0, UIO_SYSSPACE, IO_NODELOCKED, kerncred, &resid, p)) != 0) {
  AUTHPRNT("vn_rdwr() failed");
  goto out;
 }

 if (resid) {

  AUTHPRNT("vn_rdwr resid = %d", resid);
  err = EINVAL;
  goto out;
 }

out:
 if (doclose) {
  VNOP_CLOSE(vp, FREAD, ctx);
 }
 if (vp) {
  vnode_put(vp);
  vp = ((void*)0);
 }

 if (err) {
  kfree_safe(buf);
 } else {
  *bufp = buf;
  *bufszp = fsize;
 }

 return err;
}
