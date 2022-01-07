
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef int uint8_t ;
struct vnode {scalar_t__ v_type; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct chunklist_hdr {int cl_chunk_offset; size_t cl_chunk_count; } ;
struct chunklist_chunk {size_t chunk_size; int chunk_sha256; } ;
typedef int proc_t ;
typedef int off_t ;
typedef int kauth_cred_t ;
typedef int caddr_t ;
typedef int SHA256_CTX ;


 int AUTHDBG (char*,char const*) ;
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
 int SHA256_DIGEST_LENGTH ;
 int SHA256_Final (int *,int *) ;
 int SHA256_Init (int *) ;
 int SHA256_Update (int *,void*,size_t) ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VNOP_CLOSE (struct vnode*,int ,int ) ;
 int VNOP_OPEN (struct vnode*,int ,int ) ;
 scalar_t__ VREG ;
 scalar_t__ bcmp (int *,int ,int) ;
 void* kalloc (size_t) ;
 int kfree_safe (void*) ;
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;
 scalar_t__ os_add_overflow (int,size_t,int*) ;
 int vfs_context_kernel () ;
 int vfs_context_proc (int ) ;
 int vfs_context_ucred (int ) ;
 int vn_rdwr (int ,struct vnode*,int ,size_t,int,int ,int ,int ,int*,int ) ;
 int vnode_put (struct vnode*) ;
 int vnode_size (struct vnode*,int*,int ) ;

__attribute__((used)) static int
validate_root_image(const char *root_path, void *chunklist)
{
 int err = 0;
 struct chunklist_hdr *hdr = chunklist;
 struct chunklist_chunk *chk = ((void*)0);
 size_t ch = 0;
 struct nameidata ndp = {};
 struct vnode *vp = ((void*)0);
 off_t fsize = 0;
 off_t offset = 0;
 bool doclose = 0;
 size_t bufsz = 0;
 void *buf = ((void*)0);

 vfs_context_t ctx = vfs_context_kernel();
 kauth_cred_t kerncred = vfs_context_ucred(ctx);
 proc_t p = vfs_context_proc(ctx);

 AUTHDBG("validating root dmg %s", root_path);




 NDINIT(&ndp, LOOKUP, OP_OPEN, LOCKLEAF, UIO_SYSSPACE, CAST_USER_ADDR_T(root_path), ctx);
 if ((err = namei(&ndp)) != 0) {
  AUTHPRNT("namei failed (%s)", root_path);
  goto out;
 }
 nameidone(&ndp);
 vp = ndp.ni_vp;

 if (vp->v_type != VREG) {
  err = EINVAL;
  goto out;
 }

 if ((err = vnode_size(vp, &fsize, ctx)) != 0) {
  AUTHPRNT("failed to get vnode size");
  goto out;
 }

 if ((err = VNOP_OPEN(vp, FREAD, ctx)) != 0) {
  AUTHPRNT("failed to open vnode");
  goto out;
 }
 doclose = 1;




 chk = chunklist + hdr->cl_chunk_offset;
 for (ch = 0; ch < hdr->cl_chunk_count; ch++) {
  int resid = 0;

  if (!buf) {

   buf = kalloc(chk->chunk_size);
   if (buf == ((void*)0)) {
    err = ENOMEM;
    goto out;
   }
   bufsz = chk->chunk_size;
  }

  if (chk->chunk_size > bufsz) {
   AUTHPRNT("chunk size too big");
   err = EINVAL;
   goto out;
  }

  err = vn_rdwr(UIO_READ, vp, (caddr_t)buf, chk->chunk_size, offset, UIO_SYSSPACE, IO_NODELOCKED, kerncred, &resid, p);
  if (err) {
   AUTHPRNT("vn_rdrw fail (err = %d, resid = %d)", err, resid);
   goto out;
  }
  if (resid) {
   err = EINVAL;
   AUTHPRNT("chunk covered non-existant part of image");
   goto out;
  }


  uint8_t sha_digest[SHA256_DIGEST_LENGTH];
  SHA256_CTX sha_ctx;
  SHA256_Init(&sha_ctx);
  SHA256_Update(&sha_ctx, buf, chk->chunk_size);
  SHA256_Final(sha_digest, &sha_ctx);


  if (bcmp(sha_digest, chk->chunk_sha256, SHA256_DIGEST_LENGTH) != 0) {
   AUTHPRNT("SHA mismatch on chunk %lu (offset %lld, size %u)", ch, offset, chk->chunk_size);
   err = EINVAL;
   goto out;
  }

  if (os_add_overflow(offset, chk->chunk_size, &offset)) {
   err = EINVAL;
   goto out;
  }
  chk++;
 }

 if (offset != fsize) {
  AUTHPRNT("chunklist did not cover entire file (offset = %lld, fsize = %lld)", offset, fsize);
  err = EINVAL;
  goto out;
 }

out:
 kfree_safe(buf);
 if (doclose) {
  VNOP_CLOSE(vp, FREAD, ctx);
 }
 if (vp) {
  vnode_put(vp);
  vp = ((void*)0);
 }

 return err;
}
