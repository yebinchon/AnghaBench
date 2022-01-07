
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int uint32_t ;
typedef int uaddr ;
struct xdrbuf {int xb_flags; } ;
struct TYPE_11__ {int sin_port; int sin_addr; } ;
struct nfs_dlmount {char* ndm_mntfrom; scalar_t__ ndm_sotype; int ndm_fhlen; int * ndm_fh; TYPE_1__ ndm_saddr; scalar_t__ ndm_nfsv3; } ;
struct mount {int dummy; } ;
typedef TYPE_3__* mount_t ;
struct TYPE_13__ {int mnt_flag; TYPE_2__* mnt_vtable; } ;
struct TYPE_12__ {int vfc_refcount; } ;


 int AF_INET ;
 int EINVAL ;
 int FREE_ZONE (TYPE_3__*,int,int ) ;
 int MAX_IPv4_STR_LEN ;
 int MNT_RDONLY ;
 int M_MOUNT ;
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
 scalar_t__ SOCK_DGRAM ;
 int XB_CLEANUP ;
 int XDRWORD ;
 char* inet_ntop (int ,int *,char*,int) ;
 int mac_mount_label_destroy (TYPE_3__*) ;
 int mount_list_lock () ;
 int mount_list_unlock () ;
 int mount_lock_destroy (TYPE_3__*) ;
 int mountnfs (char*,TYPE_3__*,int ,int *) ;
 int ntohs (int ) ;
 int printf (char*,...) ;
 int strlen (char*) ;
 int vfs_rootmountalloc (char*,char*,TYPE_3__**) ;
 int vfs_unbusy (TYPE_3__*) ;
 int xb_add_32 (int,struct xdrbuf*,int) ;
 int xb_add_bitmap (int,struct xdrbuf*,int*,int) ;
 int xb_add_fh (int,struct xdrbuf*,int *,int ) ;
 int xb_add_string (int,struct xdrbuf*,char*,int) ;
 char* xb_buffer_base (struct xdrbuf*) ;
 int xb_build_done (int,struct xdrbuf*) ;
 int xb_cleanup (struct xdrbuf*) ;
 int xb_init_buffer (struct xdrbuf*,int *,int ) ;
 int xb_offset (struct xdrbuf*) ;
 int xb_seek (struct xdrbuf*,int) ;

__attribute__((used)) static int
nfs_mount_diskless(
 struct nfs_dlmount *ndmntp,
 const char *mntname,
 int mntflag,
 vnode_t *vpp,
 mount_t *mpp,
 vfs_context_t ctx)
{
 mount_t mp;
 int error, numcomps;
 char *xdrbuf, *p, *cp, *frompath, *endserverp;
 char uaddr[MAX_IPv4_STR_LEN];
 struct xdrbuf xb;
 uint32_t mattrs[NFS_MATTR_BITMAP_LEN];
 uint32_t mflags_mask[NFS_MFLAG_BITMAP_LEN];
 uint32_t mflags[NFS_MFLAG_BITMAP_LEN];
 uint32_t argslength_offset, attrslength_offset, end_offset;

 if ((error = vfs_rootmountalloc("nfs", ndmntp->ndm_mntfrom, &mp))) {
  printf("nfs_mount_diskless: NFS not configured\n");
  return (error);
 }

 mp->mnt_flag |= mntflag;
 if (!(mntflag & MNT_RDONLY))
  mp->mnt_flag &= ~MNT_RDONLY;


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
  printf("nfs_mount_diskless: bad address\n");
  return (EINVAL);
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
  printf("nfs_mount_diskless: error %d assembling mount args\n", error);
  xb_cleanup(&xb);
  return (error);
 }

 xdrbuf = xb_buffer_base(&xb);
 xb.xb_flags &= ~XB_CLEANUP;


 if ((error = mountnfs(xdrbuf, mp, ctx, vpp))) {
  printf("nfs_mountroot: mount %s failed: %d\n", mntname, error);

  mount_list_lock();
  mp->mnt_vtable->vfc_refcount--;
  mount_list_unlock();
  vfs_unbusy(mp);
  mount_lock_destroy(mp);



  FREE_ZONE(mp, sizeof(struct mount), M_MOUNT);
 } else {
  *mpp = mp;
 }
 xb_cleanup(&xb);
 return (error);
}
