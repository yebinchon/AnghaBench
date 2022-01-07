
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct saved_mount_fields {scalar_t__ mnt_maxreadcnt; scalar_t__ mnt_maxwritecnt; scalar_t__ mnt_segreadcnt; scalar_t__ mnt_segwritecnt; scalar_t__ mnt_ioqueue_depth; int mnt_ioscale; } ;
struct TYPE_12__ {scalar_t__ ioqueue_depth; scalar_t__ maxreadcnt; scalar_t__ maxwritecnt; scalar_t__ segreadcnt; scalar_t__ segwritecnt; int is_ssd; scalar_t__ enabled; } ;
struct _disk_conditioner_info_t {int last_io_timestamp; struct saved_mount_fields mnt_fields; TYPE_2__ dcinfo; } ;
typedef TYPE_1__* mount_t ;
typedef TYPE_2__ disk_conditioner_info ;
struct TYPE_11__ {scalar_t__ mnt_maxreadcnt; scalar_t__ mnt_maxwritecnt; scalar_t__ mnt_segreadcnt; scalar_t__ mnt_segwritecnt; scalar_t__ mnt_ioqueue_depth; int mnt_ioscale; struct _disk_conditioner_info_t* mnt_disk_conditioner_info; } ;


 int DISK_CONDITIONER_SET_ENTITLEMENT ;
 int EINVAL ;
 int EPERM ;
 int IOTaskHasEntitlement (int ,int ) ;
 int MNT_IOSCALE (scalar_t__) ;
 int bzero (struct _disk_conditioner_info_t*,int) ;
 int current_task () ;
 int disk_conditioner_restore_mount_fields (TYPE_1__*,struct saved_mount_fields*) ;
 struct _disk_conditioner_info_t* kalloc (int) ;
 int kauth_cred_get () ;
 int kauth_cred_issuser (int ) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int microuptime (int *) ;
 int mount_lock (TYPE_1__*) ;
 int mount_unlock (TYPE_1__*) ;
 int throttle_info_mount_reset_period (TYPE_1__*,int ) ;

int
disk_conditioner_set_info(mount_t mp, disk_conditioner_info *uinfo)
{
 struct _disk_conditioner_info_t *internal_info;
 disk_conditioner_info *info;
 struct saved_mount_fields *mnt_fields;

 if (!kauth_cred_issuser(kauth_cred_get()) || !IOTaskHasEntitlement(current_task(), DISK_CONDITIONER_SET_ENTITLEMENT)) {
  return EPERM;
 }

 if (!mp) {
  return EINVAL;
 }

 mount_lock(mp);

 internal_info = mp->mnt_disk_conditioner_info;
 if (!internal_info) {
  internal_info = mp->mnt_disk_conditioner_info = kalloc(sizeof(struct _disk_conditioner_info_t));
  bzero(internal_info, sizeof(struct _disk_conditioner_info_t));
  mnt_fields = &(internal_info->mnt_fields);


  mnt_fields->mnt_maxreadcnt = mp->mnt_maxreadcnt;
  mnt_fields->mnt_maxwritecnt = mp->mnt_maxwritecnt;
  mnt_fields->mnt_segreadcnt = mp->mnt_segreadcnt;
  mnt_fields->mnt_segwritecnt = mp->mnt_segwritecnt;
  mnt_fields->mnt_ioqueue_depth = mp->mnt_ioqueue_depth;
  mnt_fields->mnt_ioscale = mp->mnt_ioscale;
 }

 info = &(internal_info->dcinfo);
 mnt_fields = &(internal_info->mnt_fields);

 if (!uinfo->enabled && info->enabled) {

  disk_conditioner_restore_mount_fields(mp, mnt_fields);
 }

 memcpy(info, uinfo, sizeof(disk_conditioner_info));


 if (uinfo->ioqueue_depth == 0 || uinfo->ioqueue_depth > mnt_fields->mnt_ioqueue_depth) {
  info->ioqueue_depth = mnt_fields->mnt_ioqueue_depth;
 }
 if (uinfo->maxreadcnt == 0 || uinfo->maxreadcnt > mnt_fields->mnt_maxreadcnt) {
  info->maxreadcnt = mnt_fields->mnt_maxreadcnt;
 }
 if (uinfo->maxwritecnt == 0 || uinfo->maxwritecnt > mnt_fields->mnt_maxwritecnt) {
  info->maxwritecnt = mnt_fields->mnt_maxwritecnt;
 }
 if (uinfo->segreadcnt == 0 || uinfo->segreadcnt > mnt_fields->mnt_segreadcnt) {
  info->segreadcnt = mnt_fields->mnt_segreadcnt;
 }
 if (uinfo->segwritecnt == 0 || uinfo->segwritecnt > mnt_fields->mnt_segwritecnt) {
  info->segwritecnt = mnt_fields->mnt_segwritecnt;
 }

 if (uinfo->enabled) {
  mp->mnt_maxreadcnt = info->maxreadcnt;
  mp->mnt_maxwritecnt = info->maxwritecnt;
  mp->mnt_segreadcnt = info->segreadcnt;
  mp->mnt_segwritecnt = info->segwritecnt;
  mp->mnt_ioqueue_depth = info->ioqueue_depth;
  mp->mnt_ioscale = MNT_IOSCALE(info->ioqueue_depth);
 }

 mount_unlock(mp);

 microuptime(&internal_info->last_io_timestamp);


 throttle_info_mount_reset_period(mp, info->is_ssd);

 return 0;
}
