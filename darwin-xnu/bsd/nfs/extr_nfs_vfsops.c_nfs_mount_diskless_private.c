
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_25__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_15__ ;


typedef TYPE_3__* vnode_t ;
typedef int vfs_context_t ;
typedef int uint32_t ;
typedef int uaddr ;
typedef int u_int32_t ;
struct xdrbuf {int xb_flags; } ;
struct vfstable {int vfc_flags; int vfc_refcount; int vfc_name; int vfc_vfsops; struct vfstable* vfc_next; } ;
struct TYPE_30__ {int sin_port; int sin_addr; } ;
struct nfs_dlmount {char const* ndm_mntfrom; scalar_t__ ndm_sotype; int ndm_fhlen; int * ndm_fh; TYPE_2__ ndm_saddr; scalar_t__ ndm_nfsv3; } ;
struct nameidata {TYPE_3__* ni_vp; } ;
struct mount {int dummy; } ;
struct filedesc {int * fd_rdir; int fd_cdir; } ;
typedef TYPE_4__* proc_t ;
typedef TYPE_5__* mount_t ;
struct TYPE_28__ {int f_mntfromname; int f_mntonname; int f_owner; int f_fstypename; } ;
struct TYPE_33__ {int mnt_segreadcnt; int mnt_segwritecnt; int mnt_flag; TYPE_3__* mnt_vnodecovered; TYPE_1__ mnt_vfsstat; int mnt_op; struct vfstable* mnt_vtable; int mnt_vnodelist; int mnt_newvnodes; int mnt_workerqueue; scalar_t__ mnt_authcache_ttl; void* mnt_realrootvp; scalar_t__ mnt_ioflags; int mnt_maxwritecnt; int mnt_maxreadcnt; } ;
struct TYPE_32__ {struct filedesc* p_fd; } ;
struct TYPE_31__ {TYPE_5__* v_mountedhere; } ;
struct TYPE_29__ {int mnt_flag; } ;
struct TYPE_27__ {TYPE_25__* tqh_first; } ;


 int AF_INET ;
 int BUF_WRITE_DATA ;
 int CAST_USER_ADDR_T (char const*) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENOTDIR ;
 int FOLLOW ;
 int FREE_ZONE (TYPE_5__*,int,int ) ;
 int LK_NOWAIT ;
 int LOCKLEAF ;
 int LOOKUP ;
 scalar_t__ MAXPATHLEN ;
 int MAXPHYS ;
 int MAX_IPv4_STR_LEN ;
 scalar_t__ MFSNAMELEN ;
 int MNT_ROOTFS ;
 int MNT_VISFLAGMASK ;
 int MNT_WAIT ;
 int M_MOUNT ;
 int M_WAITOK ;
 int NDINIT (struct nameidata*,int ,int ,int,int ,int ,int ) ;
 int NFS_ARGSVERSION_XDR ;
 int NFS_BITMAP_SET (int*,int ) ;
 int NFS_BITMAP_ZERO (int*,int) ;
 int NFS_MATTR_BITMAP_LEN ;
 int NFS_MATTR_FH ;
 int NFS_MATTR_FS_LOCATIONS ;
 int NFS_MATTR_MNTFLAGS ;
 int NFS_MATTR_NFS_PORT ;
 int NFS_MATTR_NFS_VERSION ;
 int NFS_MATTR_SOCKET_TYPE ;
 int NFS_MFLAG_BITMAP_LEN ;
 int NFS_MFLAG_RESVPORT ;
 int NFS_XDRARGS_VERSION_0 ;
 void* NULLVP ;
 int OP_LOOKUP ;
 scalar_t__ SOCK_DGRAM ;
 int TAILQ_INIT (int *) ;
 int UIO_SYSSPACE ;
 scalar_t__ VDIR ;
 scalar_t__ VFS_ROOT (TYPE_25__*,int *,int *) ;
 int VNOP_FSYNC (TYPE_3__*,int ,int ) ;
 int XB_CLEANUP ;
 int XDRWORD ;
 TYPE_5__* _MALLOC_ZONE (int ,int ,int ) ;
 int buf_invalidateblks (TYPE_3__*,int ,int ,int ) ;
 int bzero (char*,int) ;
 int copystr (char const*,int ,scalar_t__,int ) ;
 TYPE_4__* current_proc () ;
 char* inet_ntop (int ,int *,char*,int) ;
 int kauth_cred_get () ;
 int kauth_cred_getuid (int ) ;
 int mac_mount_label_associate (int ,TYPE_5__*) ;
 int mac_mount_label_destroy (TYPE_5__*) ;
 int mac_mount_label_init (TYPE_5__*) ;
 int mount_list_lock () ;
 int mount_list_unlock () ;
 int mount_lock_destroy (TYPE_5__*) ;
 int mount_lock_init (TYPE_5__*) ;
 TYPE_15__ mountlist ;
 int mountnfs (char*,TYPE_5__*,int ,TYPE_3__**) ;
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;
 int ntohs (int ) ;
 int panic (char*) ;
 int printf (char*,...) ;
 int rootvnode ;
 int strlen (char*) ;
 int strncmp (int ,char*,int) ;
 int strncpy (int ,int ,scalar_t__) ;
 int vfs_busy (TYPE_5__*,int ) ;
 int vfs_unbusy (TYPE_5__*) ;
 struct vfstable* vfsconf ;
 int * vnode_mountedhere (TYPE_3__*) ;
 int vnode_put (TYPE_3__*) ;
 int vnode_ref (int ) ;
 int vnode_rele (int ) ;
 scalar_t__ vnode_vtype (TYPE_3__*) ;
 int xb_add_32 (int,struct xdrbuf*,int) ;
 int xb_add_bitmap (int,struct xdrbuf*,int*,int) ;
 int xb_add_fh (int,struct xdrbuf*,int *,int ) ;
 int xb_add_string (int,struct xdrbuf*,char*,int) ;
 char* xb_buffer_base (struct xdrbuf*) ;
 int xb_build_done (int,struct xdrbuf*) ;
 int xb_cleanup (struct xdrbuf*) ;
 int xb_init (struct xdrbuf*,int ) ;
 int xb_init_buffer (struct xdrbuf*,int *,int ) ;
 int xb_offset (struct xdrbuf*) ;
 int xb_seek (struct xdrbuf*,int) ;

__attribute__((used)) static int
nfs_mount_diskless_private(
 struct nfs_dlmount *ndmntp,
 const char *mntname,
 int mntflag,
 vnode_t *vpp,
 mount_t *mpp,
 vfs_context_t ctx)
{
 mount_t mp;
 int error, numcomps;
 proc_t procp;
 struct vfstable *vfsp;
 struct nameidata nd;
 vnode_t vp;
 char *xdrbuf = ((void*)0), *p, *cp, *frompath, *endserverp;
 char uaddr[MAX_IPv4_STR_LEN];
 struct xdrbuf xb;
 uint32_t mattrs[NFS_MATTR_BITMAP_LEN];
 uint32_t mflags_mask[NFS_MFLAG_BITMAP_LEN], mflags[NFS_MFLAG_BITMAP_LEN];
 uint32_t argslength_offset, attrslength_offset, end_offset;

 procp = current_proc();
 xb_init(&xb, 0);

 {




  struct filedesc *fdp;
  fdp = procp->p_fd;
  mountlist.tqh_first->mnt_flag |= MNT_ROOTFS;


  if (VFS_ROOT(mountlist.tqh_first, &rootvnode, ((void*)0)))
   panic("cannot find root vnode");
  error = vnode_ref(rootvnode);
  if (error) {
   printf("nfs_mountroot: vnode_ref() failed on root vnode!\n");
   goto out;
  }
  fdp->fd_cdir = rootvnode;
  fdp->fd_rdir = ((void*)0);
 }




 NDINIT(&nd, LOOKUP, OP_LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE,
     CAST_USER_ADDR_T(mntname), ctx);
 if ((error = namei(&nd))) {
  printf("nfs_mountroot: private namei failed!\n");
  goto out;
 }
 {

  vnode_rele(rootvnode);
 }
 nameidone(&nd);
 vp = nd.ni_vp;

 if ((error = VNOP_FSYNC(vp, MNT_WAIT, ctx)) ||
     (error = buf_invalidateblks(vp, BUF_WRITE_DATA, 0, 0))) {
  vnode_put(vp);
  goto out;
 }
 if (vnode_vtype(vp) != VDIR) {
  vnode_put(vp);
  error = ENOTDIR;
  goto out;
 }
 for (vfsp = vfsconf; vfsp; vfsp = vfsp->vfc_next)
  if (!strncmp(vfsp->vfc_name, "nfs", sizeof(vfsp->vfc_name)))
   break;
 if (vfsp == ((void*)0)) {
  printf("nfs_mountroot: private NFS not configured\n");
  vnode_put(vp);
  error = ENODEV;
  goto out;
 }
 if (vnode_mountedhere(vp) != ((void*)0)) {
  vnode_put(vp);
  error = EBUSY;
  goto out;
 }




 mp = _MALLOC_ZONE((u_int32_t)sizeof(struct mount), M_MOUNT, M_WAITOK);
 if (!mp) {
  printf("nfs_mountroot: unable to allocate mount structure\n");
  vnode_put(vp);
  error = ENOMEM;
  goto out;
 }
 bzero((char *)mp, sizeof(struct mount));


 mp->mnt_maxreadcnt = mp->mnt_maxwritecnt = MAXPHYS;
 mp->mnt_segreadcnt = mp->mnt_segwritecnt = 32;
 mp->mnt_ioflags = 0;
 mp->mnt_realrootvp = NULLVP;
 mp->mnt_authcache_ttl = 0;

 mount_lock_init(mp);
 TAILQ_INIT(&mp->mnt_vnodelist);
 TAILQ_INIT(&mp->mnt_workerqueue);
 TAILQ_INIT(&mp->mnt_newvnodes);
 (void)vfs_busy(mp, LK_NOWAIT);
 TAILQ_INIT(&mp->mnt_vnodelist);
 mount_list_lock();
 vfsp->vfc_refcount++;
 mount_list_unlock();
 mp->mnt_vtable = vfsp;
 mp->mnt_op = vfsp->vfc_vfsops;

 mp->mnt_flag = mntflag;
 mp->mnt_flag |= vfsp->vfc_flags & MNT_VISFLAGMASK;
 strncpy(mp->mnt_vfsstat.f_fstypename, vfsp->vfc_name, MFSNAMELEN-1);
 vp->v_mountedhere = mp;
 mp->mnt_vnodecovered = vp;
 vp = NULLVP;
 mp->mnt_vfsstat.f_owner = kauth_cred_getuid(kauth_cred_get());
 (void) copystr(mntname, mp->mnt_vfsstat.f_mntonname, MAXPATHLEN - 1, 0);
 (void) copystr(ndmntp->ndm_mntfrom, mp->mnt_vfsstat.f_mntfromname, MAXPATHLEN - 1, 0);






 frompath = ndmntp->ndm_mntfrom;
 if (*frompath == '[') {
  while (*frompath && (*frompath != ']'))
   frompath++;
  if (*frompath == ']')
   frompath++;
 }
 while (*frompath && (*frompath != ':'))
  frompath++;
 endserverp = frompath;
 while (*frompath && (*frompath == ':'))
  frompath++;

 p = frompath;
 while (*p && (*p == '/'))
  p++;
 numcomps = 0;
 while (*p) {
  numcomps++;
  while (*p && (*p != '/'))
   p++;
  while (*p && (*p == '/'))
   p++;
 }


 if (inet_ntop(AF_INET, &ndmntp->ndm_saddr.sin_addr, uaddr, sizeof(uaddr)) != uaddr) {
  printf("nfs_mountroot: bad address\n");
  error = EINVAL;
  goto out;
 }


 NFS_BITMAP_ZERO(mattrs, NFS_MATTR_BITMAP_LEN);
 NFS_BITMAP_SET(mattrs, NFS_MATTR_NFS_VERSION);
 NFS_BITMAP_SET(mattrs, NFS_MATTR_SOCKET_TYPE);
 NFS_BITMAP_SET(mattrs, NFS_MATTR_NFS_PORT);
 NFS_BITMAP_SET(mattrs, NFS_MATTR_FH);
 NFS_BITMAP_SET(mattrs, NFS_MATTR_FS_LOCATIONS);
 NFS_BITMAP_SET(mattrs, NFS_MATTR_MNTFLAGS);


 NFS_BITMAP_ZERO(mflags_mask, NFS_MFLAG_BITMAP_LEN);
 NFS_BITMAP_ZERO(mflags, NFS_MFLAG_BITMAP_LEN);
 NFS_BITMAP_SET(mflags_mask, NFS_MFLAG_RESVPORT);
 NFS_BITMAP_SET(mflags, NFS_MFLAG_RESVPORT);


 xb_init_buffer(&xb, ((void*)0), 0);
 xb_add_32(error, &xb, NFS_ARGSVERSION_XDR);
 argslength_offset = xb_offset(&xb);
 xb_add_32(error, &xb, 0);
 xb_add_32(error, &xb, NFS_XDRARGS_VERSION_0);
 xb_add_bitmap(error, &xb, mattrs, NFS_MATTR_BITMAP_LEN);
 attrslength_offset = xb_offset(&xb);
 xb_add_32(error, &xb, 0);
 xb_add_32(error, &xb, ndmntp->ndm_nfsv3 ? 3 : 2);
 xb_add_string(error, &xb, ((ndmntp->ndm_sotype == SOCK_DGRAM) ? "udp" : "tcp"), 3);
 xb_add_32(error, &xb, ntohs(ndmntp->ndm_saddr.sin_port));
 xb_add_fh(error, &xb, &ndmntp->ndm_fh[0], ndmntp->ndm_fhlen);

 xb_add_32(error, &xb, 1);
 xb_add_32(error, &xb, 1);
 xb_add_string(error, &xb, ndmntp->ndm_mntfrom, (endserverp - ndmntp->ndm_mntfrom));
 xb_add_32(error, &xb, 1);
 xb_add_string(error, &xb, uaddr, strlen(uaddr));
 xb_add_32(error, &xb, 0);
 xb_add_32(error, &xb, numcomps);
 p = frompath;
 while (*p && (*p == '/'))
  p++;
 while (*p) {
  cp = p;
  while (*p && (*p != '/'))
   p++;
  xb_add_string(error, &xb, cp, (p - cp));
  if (error)
   break;
  while (*p && (*p == '/'))
   p++;
 }
 xb_add_32(error, &xb, 0);
 xb_add_32(error, &xb, mntflag);
 xb_build_done(error, &xb);


 end_offset = xb_offset(&xb);
 if (!error) {
  error = xb_seek(&xb, argslength_offset);
  xb_add_32(error, &xb, end_offset - argslength_offset + XDRWORD );
 }
 if (!error) {
  error = xb_seek(&xb, attrslength_offset);
  xb_add_32(error, &xb, end_offset - attrslength_offset - XDRWORD );
 }
 if (error) {
  printf("nfs_mountroot: error %d assembling mount args\n", error);
  goto out;
 }

 xdrbuf = xb_buffer_base(&xb);
 xb.xb_flags &= ~XB_CLEANUP;


 if ((error = mountnfs(xdrbuf, mp, ctx, &vp))) {
  printf("nfs_mountroot: mount %s failed: %d\n", mntname, error);
  vnode_put(mp->mnt_vnodecovered);
  mount_list_lock();
  vfsp->vfc_refcount--;
  mount_list_unlock();
  vfs_unbusy(mp);
  mount_lock_destroy(mp);



  FREE_ZONE(mp, sizeof (struct mount), M_MOUNT);
  goto out;
 }

 *mpp = mp;
 *vpp = vp;
out:
 xb_cleanup(&xb);
 return (error);
}
