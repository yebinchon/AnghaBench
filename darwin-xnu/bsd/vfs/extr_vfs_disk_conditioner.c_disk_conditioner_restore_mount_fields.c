
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct saved_mount_fields {int mnt_ioscale; int mnt_ioqueue_depth; int mnt_segwritecnt; int mnt_segreadcnt; int mnt_maxwritecnt; int mnt_maxreadcnt; } ;
typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_ioscale; int mnt_ioqueue_depth; int mnt_segwritecnt; int mnt_segreadcnt; int mnt_maxwritecnt; int mnt_maxreadcnt; } ;



__attribute__((used)) static inline void
disk_conditioner_restore_mount_fields(mount_t mp, struct saved_mount_fields *mnt_fields) {
 mp->mnt_maxreadcnt = mnt_fields->mnt_maxreadcnt;
 mp->mnt_maxwritecnt = mnt_fields->mnt_maxwritecnt;
 mp->mnt_segreadcnt = mnt_fields->mnt_segreadcnt;
 mp->mnt_segwritecnt = mnt_fields->mnt_segwritecnt;
 mp->mnt_ioqueue_depth = mnt_fields->mnt_ioqueue_depth;
 mp->mnt_ioscale = mnt_fields->mnt_ioscale;
}
