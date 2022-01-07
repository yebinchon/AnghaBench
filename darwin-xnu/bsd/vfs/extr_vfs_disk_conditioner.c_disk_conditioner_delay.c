
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef double uint64_t ;
struct timeval {double tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_11__ {double access_time_usec; int read_throughput_mbps; int write_throughput_mbps; int is_ssd; int enabled; } ;
struct _disk_conditioner_info_t {scalar_t__ last_blkno; struct timeval last_io_timestamp; TYPE_3__ dcinfo; } ;
typedef TYPE_2__* mount_t ;
typedef TYPE_3__ disk_conditioner_info ;
typedef scalar_t__ daddr64_t ;
typedef TYPE_4__* buf_t ;
struct TYPE_12__ {scalar_t__ b_blkno; scalar_t__ b_bcount; int b_flags; } ;
struct TYPE_10__ {struct _disk_conditioner_info_t* mnt_disk_conditioner_info; } ;
struct TYPE_9__ {TYPE_2__* v_mount; } ;


 double BLK_MAX (TYPE_2__*) ;
 int B_READ ;
 double DISK_IDLE_SEC ;
 double DISK_SPINUP_SEC ;
 double USEC_PER_SEC ;
 TYPE_1__* buf_vnode (TYPE_4__*) ;
 int delay (double) ;
 int microuptime (struct timeval*) ;
 int timevalsub (struct timeval*,struct timeval*) ;
 double weighted_scale_factor (double) ;

void
disk_conditioner_delay(buf_t bp, int extents, int total_size, uint64_t already_elapsed_usec)
{
 mount_t mp;
 uint64_t delay_usec;
 daddr64_t blkdiff;
 daddr64_t last_blkno;
 double access_time_scale;
 struct _disk_conditioner_info_t *internal_info = ((void*)0);
 disk_conditioner_info *info = ((void*)0);
 struct timeval elapsed;
 struct timeval start;
 vnode_t vp;

 vp = buf_vnode(bp);
 if (!vp) {
  return;
 }

 mp = vp->v_mount;
 if (!mp) {
  return;
 }

 internal_info = mp->mnt_disk_conditioner_info;
 if (!internal_info || !internal_info->dcinfo.enabled) {
  return;
 }
 info = &(internal_info->dcinfo);

 if (!info->is_ssd) {

  last_blkno = internal_info->last_blkno;
  blkdiff = bp->b_blkno > last_blkno ? bp->b_blkno - last_blkno : last_blkno - bp->b_blkno;
  internal_info->last_blkno = bp->b_blkno + bp->b_bcount;
 } else {
  blkdiff = BLK_MAX(mp);
 }


 access_time_scale = weighted_scale_factor((double)blkdiff / BLK_MAX(mp));

 delay_usec = (uint64_t)(((uint64_t)extents * info->access_time_usec) * access_time_scale);

 if (info->read_throughput_mbps && (bp->b_flags & B_READ)) {
  delay_usec += (uint64_t)(total_size / ((double)(info->read_throughput_mbps * 1024 * 1024 / 8) / USEC_PER_SEC));
 } else if (info->write_throughput_mbps && !(bp->b_flags & B_READ)) {
  delay_usec += (uint64_t)(total_size / ((double)(info->write_throughput_mbps * 1024 * 1024 / 8) / USEC_PER_SEC));
 }


 if (!info->is_ssd) {
  microuptime(&elapsed);
  timevalsub(&elapsed, &internal_info->last_io_timestamp);

  if (elapsed.tv_sec > DISK_IDLE_SEC && internal_info->last_io_timestamp.tv_sec != 0) {
   delay_usec += DISK_SPINUP_SEC * USEC_PER_SEC;
  }
 }

 if (delay_usec <= already_elapsed_usec) {
  microuptime(&internal_info->last_io_timestamp);
  return;
 }

 delay_usec -= already_elapsed_usec;

 while (delay_usec) {
  microuptime(&start);
  delay(delay_usec);
  microuptime(&elapsed);
  timevalsub(&elapsed, &start);
  if (elapsed.tv_sec * USEC_PER_SEC < delay_usec) {
   delay_usec -= elapsed.tv_sec * USEC_PER_SEC;
  } else {
   break;
  }
  if ((uint64_t)elapsed.tv_usec < delay_usec) {
   delay_usec -= elapsed.tv_usec;
  } else {
   break;
  }
 }

 microuptime(&internal_info->last_io_timestamp);
}
