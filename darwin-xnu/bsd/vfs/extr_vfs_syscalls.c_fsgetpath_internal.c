
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vnode_t ;
typedef int vm_size_t ;
typedef int vfs_context_t ;
typedef int user_ssize_t ;
typedef int uint64_t ;
struct mount {int mnt_flag; int mnt_vnodecovered; } ;
typedef int ino64_t ;
typedef int dbg_parms ;
typedef int * caddr_t ;


 int AUDIT_ARG (int ,int *) ;
 int BUILDPATH_CHECKACCESS ;
 int BUILDPATH_CHECK_MOVED ;
 int EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENOTSUP ;
 int KDBG_VFS_LOOKUP_FLAG_LOOKUP ;
 int LK_NOWAIT ;
 int MNT_UNION ;
 int NUMPARMS ;
 int PAGE_SIZE ;
 int VFS_ROOT (struct mount*,scalar_t__*,int ) ;
 int VFS_VGET (struct mount*,int ,scalar_t__*,int ) ;
 int build_path (scalar_t__,int *,int ,int*,int,int ) ;
 scalar_t__ kdebug_enable ;
 int kdebug_vfs_lookup (long*,int,void*,int ) ;
 int mac_vnode_check_fsgetpath (int ,scalar_t__) ;
 int memcpy (char*,int *,int) ;
 int memset (char*,int ,int) ;
 struct mount* mount_lookupby_volfsid (int,int) ;
 int text ;
 scalar_t__ vfs_busy (struct mount*,int ) ;
 scalar_t__ vfs_context_suser (int ) ;
 int vfs_unbusy (struct mount*) ;
 struct mount* vnode_mount (int ) ;
 int vnode_put (scalar_t__) ;

__attribute__((used)) static int fsgetpath_internal(
 vfs_context_t ctx, int volfs_id, uint64_t objid,
 vm_size_t bufsize, caddr_t buf, int *pathlen)
{
 int error;
 struct mount *mp = ((void*)0);
 vnode_t vp;
 int length;
 int bpflags;

 unsigned int retries = 0x10;

 if (bufsize > PAGE_SIZE) {
  return (EINVAL);
 }

 if (buf == ((void*)0)) {
  return (ENOMEM);
 }

retry:
 if ((mp = mount_lookupby_volfsid(volfs_id, 1)) == ((void*)0)) {
  error = ENOTSUP;
  return ENOTSUP;
 }

unionget:
 if (objid == 2) {
  error = VFS_ROOT(mp, &vp, ctx);
 } else {
  error = VFS_VGET(mp, (ino64_t)objid, &vp, ctx);
 }

 if (error == ENOENT && (mp->mnt_flag & MNT_UNION)) {





  struct mount *tmp = mp;
  mp = vnode_mount(tmp->mnt_vnodecovered);
  vfs_unbusy(tmp);
  if (vfs_busy(mp, LK_NOWAIT) == 0)
   goto unionget;
 } else {
  vfs_unbusy(mp);
 }

 if (error) {
  return error;
 }
 bpflags = vfs_context_suser(ctx) ? BUILDPATH_CHECKACCESS : 0;
 bpflags |= BUILDPATH_CHECK_MOVED;
 error = build_path(vp, buf, bufsize, &length, bpflags, ctx);
 vnode_put(vp);

 if (error) {

  if (error == EAGAIN) {
   --retries;
   if (retries > 0)
    goto retry;

   error = ENOENT;
  }
  goto out;
 }

 AUDIT_ARG(text, buf);

 if (kdebug_enable) {
  long dbg_parms[NUMPARMS];
  int dbg_namelen;

  dbg_namelen = (int)sizeof(dbg_parms);

        if (length < dbg_namelen) {
   memcpy((char *)dbg_parms, buf, length);
   memset((char *)dbg_parms + length, 0, dbg_namelen - length);

   dbg_namelen = length;
  } else {
   memcpy((char *)dbg_parms, buf + (length - dbg_namelen), dbg_namelen);
  }

  kdebug_vfs_lookup(dbg_parms, dbg_namelen, (void *)vp,
    KDBG_VFS_LOOKUP_FLAG_LOOKUP);
 }

 *pathlen = (user_ssize_t)length;

out:
 return (error);
}
