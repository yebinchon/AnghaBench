
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int tv_nsec; int tv_sec; } ;
struct TYPE_13__ {int tv_nsec; int tv_sec; } ;
struct TYPE_11__ {int tv_nsec; int tv_sec; } ;
struct TYPE_9__ {int tv_nsec; int tv_sec; } ;
struct user64_stat64 {int * st_qspare; int st_lspare; int st_gen; int st_flags; int st_blksize; int st_blocks; int st_size; int st_birthtimensec; int st_birthtime; int st_ctimensec; int st_ctime; int st_mtimensec; int st_mtime; int st_atimensec; int st_atime; TYPE_7__ st_birthtimespec; TYPE_5__ st_ctimespec; TYPE_3__ st_mtimespec; TYPE_1__ st_atimespec; int st_rdev; int st_gid; int st_uid; int st_nlink; int st_mode; int st_ino; int st_dev; } ;
struct TYPE_16__ {int tv_nsec; int tv_sec; } ;
struct TYPE_14__ {int tv_nsec; int tv_sec; } ;
struct TYPE_12__ {int tv_nsec; int tv_sec; } ;
struct TYPE_10__ {int tv_nsec; int tv_sec; } ;
struct stat64 {int * st_qspare; int st_lspare; int st_gen; int st_flags; int st_blksize; int st_blocks; int st_size; int st_birthtimensec; int st_birthtime; int st_ctimensec; int st_ctime; int st_mtimensec; int st_mtime; int st_atimensec; int st_atime; TYPE_8__ st_birthtimespec; TYPE_6__ st_ctimespec; TYPE_4__ st_mtimespec; TYPE_2__ st_atimespec; int st_rdev; int st_gid; int st_uid; int st_nlink; int st_mode; int st_ino; int st_dev; } ;


 int bzero (struct user64_stat64*,int) ;

void munge_user64_stat64(struct stat64 *sbp, struct user64_stat64 *usbp)
{
 bzero(usbp, sizeof(*usbp));

 usbp->st_dev = sbp->st_dev;
 usbp->st_ino = sbp->st_ino;
 usbp->st_mode = sbp->st_mode;
 usbp->st_nlink = sbp->st_nlink;
 usbp->st_uid = sbp->st_uid;
 usbp->st_gid = sbp->st_gid;
 usbp->st_rdev = sbp->st_rdev;

 usbp->st_atimespec.tv_sec = sbp->st_atimespec.tv_sec;
 usbp->st_atimespec.tv_nsec = sbp->st_atimespec.tv_nsec;
 usbp->st_mtimespec.tv_sec = sbp->st_mtimespec.tv_sec;
 usbp->st_mtimespec.tv_nsec = sbp->st_mtimespec.tv_nsec;
 usbp->st_ctimespec.tv_sec = sbp->st_ctimespec.tv_sec;
 usbp->st_ctimespec.tv_nsec = sbp->st_ctimespec.tv_nsec;
 usbp->st_birthtimespec.tv_sec = sbp->st_birthtimespec.tv_sec;
 usbp->st_birthtimespec.tv_nsec = sbp->st_birthtimespec.tv_nsec;
 usbp->st_size = sbp->st_size;
 usbp->st_blocks = sbp->st_blocks;
 usbp->st_blksize = sbp->st_blksize;
 usbp->st_flags = sbp->st_flags;
 usbp->st_gen = sbp->st_gen;
 usbp->st_lspare = sbp->st_lspare;
 usbp->st_qspare[0] = sbp->st_qspare[0];
 usbp->st_qspare[1] = sbp->st_qspare[1];
}
