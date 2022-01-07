
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vinfo_stat {int * vst_qspare; int vst_rdev; int vst_gen; int vst_flags; int vst_blksize; int vst_blocks; int vst_size; int vst_birthtimensec; int vst_birthtime; int vst_ctimensec; int vst_ctime; int vst_mtimensec; int vst_mtime; int vst_atimensec; int vst_atime; int vst_gid; int vst_uid; int vst_ino; int vst_nlink; int vst_mode; int vst_dev; } ;
struct TYPE_8__ {int tv_nsec; int tv_sec; } ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct stat64 {int * st_qspare; int st_rdev; int st_gen; int st_flags; int st_blksize; int st_blocks; int st_size; TYPE_4__ st_birthtimespec; TYPE_3__ st_ctimespec; TYPE_2__ st_mtimespec; TYPE_1__ st_atimespec; int st_gid; int st_uid; int st_ino; int st_nlink; int st_mode; int st_dev; } ;


 int bzero (struct vinfo_stat*,int) ;

__attribute__((used)) static void
munge_vinfo_stat(struct stat64 *sbp, struct vinfo_stat *vsbp)
{
        bzero(vsbp, sizeof(struct vinfo_stat));

 vsbp->vst_dev = sbp->st_dev;
 vsbp->vst_mode = sbp->st_mode;
 vsbp->vst_nlink = sbp->st_nlink;
 vsbp->vst_ino = sbp->st_ino;
 vsbp->vst_uid = sbp->st_uid;
 vsbp->vst_gid = sbp->st_gid;
 vsbp->vst_atime = sbp->st_atimespec.tv_sec;
 vsbp->vst_atimensec = sbp->st_atimespec.tv_nsec;
 vsbp->vst_mtime = sbp->st_mtimespec.tv_sec;
 vsbp->vst_mtimensec = sbp->st_mtimespec.tv_nsec;
 vsbp->vst_ctime = sbp->st_ctimespec.tv_sec;
 vsbp->vst_ctimensec = sbp->st_ctimespec.tv_nsec;
 vsbp->vst_birthtime = sbp->st_birthtimespec.tv_sec;
 vsbp->vst_birthtimensec = sbp->st_birthtimespec.tv_nsec;
 vsbp->vst_size = sbp->st_size;
 vsbp->vst_blocks = sbp->st_blocks;
 vsbp->vst_blksize = sbp->st_blksize;
 vsbp->vst_flags = sbp->st_flags;
 vsbp->vst_gen = sbp->st_gen;
 vsbp->vst_rdev = sbp->st_rdev;
 vsbp->vst_qspare[0] = sbp->st_qspare[0];
 vsbp->vst_qspare[1] = sbp->st_qspare[1];
}
