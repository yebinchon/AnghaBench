
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct vfstable {int vfc_flags; int vfc_name; int vfc_refcount; int vfc_vfsops; } ;
struct mount {int dummy; } ;
typedef TYPE_2__* mount_t ;
struct TYPE_9__ {char* f_mntonname; int f_mntfromname; int f_fstypename; } ;
struct TYPE_10__ {int mnt_segreadcnt; int mnt_segwritecnt; int mnt_ioscale; int mnt_flag; TYPE_1__ mnt_vfsstat; void* mnt_vnodecovered; int mnt_op; struct vfstable* mnt_vtable; int mnt_newvnodes; int mnt_workerqueue; int mnt_vnodelist; scalar_t__ mnt_devbsdunit; scalar_t__ mnt_throttle_mask; int mnt_authcache_ttl; void* mnt_realrootvp; scalar_t__ mnt_ioflags; int mnt_ioqueue_depth; int mnt_alignmentmask; int mnt_devblocksize; int mnt_maxwritecnt; int mnt_maxsegwritesize; int mnt_maxreadcnt; int mnt_maxsegreadsize; } ;


 int CACHED_LOOKUP_RIGHT_TTL ;
 int DEV_BSIZE ;
 int LK_NOWAIT ;
 scalar_t__ LOWPRI_MAX_NUM_DEV ;
 scalar_t__ MAXPATHLEN ;
 int MAXPHYS ;
 int MFSTYPENAMELEN ;
 int MNT_DEFAULT_IOQUEUE_DEPTH ;
 int MNT_RDONLY ;
 int MNT_ROOTFS ;
 int MNT_VISFLAGMASK ;
 int M_MOUNT ;
 int M_WAITOK ;
 void* NULLVP ;
 int PAGE_MASK ;
 int TAILQ_INIT (int *) ;
 TYPE_2__* _MALLOC_ZONE (int,int ,int ) ;
 int bzero (char*,int) ;
 int copystr (void const*,int ,scalar_t__,int *) ;
 int mac_mount_label_associate (int ,TYPE_2__*) ;
 int mac_mount_label_init (TYPE_2__*) ;
 int mount_list_lock () ;
 int mount_list_unlock () ;
 int mount_lock_init (TYPE_2__*) ;
 int strlcpy (int ,int ,int ) ;
 int vfs_busy (TYPE_2__*,int ) ;
 int vfs_context_kernel () ;

__attribute__((used)) static mount_t
vfs_rootmountalloc_internal(struct vfstable *vfsp, const char *devname)
{
 mount_t mp;

 mp = _MALLOC_ZONE(sizeof(struct mount), M_MOUNT, M_WAITOK);
 bzero((char *)mp, sizeof(struct mount));


 mp->mnt_maxreadcnt = mp->mnt_maxwritecnt = MAXPHYS;
 mp->mnt_segreadcnt = mp->mnt_segwritecnt = 32;
 mp->mnt_maxsegreadsize = mp->mnt_maxreadcnt;
 mp->mnt_maxsegwritesize = mp->mnt_maxwritecnt;
 mp->mnt_devblocksize = DEV_BSIZE;
 mp->mnt_alignmentmask = PAGE_MASK;
 mp->mnt_ioqueue_depth = MNT_DEFAULT_IOQUEUE_DEPTH;
 mp->mnt_ioscale = 1;
 mp->mnt_ioflags = 0;
 mp->mnt_realrootvp = NULLVP;
 mp->mnt_authcache_ttl = CACHED_LOOKUP_RIGHT_TTL;
 mp->mnt_throttle_mask = LOWPRI_MAX_NUM_DEV - 1;
 mp->mnt_devbsdunit = 0;

 mount_lock_init(mp);
 (void)vfs_busy(mp, LK_NOWAIT);

 TAILQ_INIT(&mp->mnt_vnodelist);
 TAILQ_INIT(&mp->mnt_workerqueue);
 TAILQ_INIT(&mp->mnt_newvnodes);

 mp->mnt_vtable = vfsp;
 mp->mnt_op = vfsp->vfc_vfsops;
 mp->mnt_flag = MNT_RDONLY | MNT_ROOTFS;
 mp->mnt_vnodecovered = NULLVP;

 mp->mnt_flag |= vfsp->vfc_flags & MNT_VISFLAGMASK;

 mount_list_lock();
 vfsp->vfc_refcount++;
 mount_list_unlock();

 strlcpy(mp->mnt_vfsstat.f_fstypename, vfsp->vfc_name, MFSTYPENAMELEN);
 mp->mnt_vfsstat.f_mntonname[0] = '/';

 (void) copystr((const void *)devname, mp->mnt_vfsstat.f_mntfromname, MAXPATHLEN - 1, ((void*)0));





 return (mp);
}
