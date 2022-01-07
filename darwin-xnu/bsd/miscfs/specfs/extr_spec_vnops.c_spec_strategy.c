
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int uthread_t ;
struct vnop_strategy_args {TYPE_1__* a_bp; } ;
struct bufattr {int ba_flags; } ;
struct buf {int dummy; } ;
struct _throttle_io_info_t {int throttle_last_write_timestamp; } ;
typedef int (* strategy_fcn_ret_t ) (TYPE_1__*) ;
typedef TYPE_2__* proc_t ;
typedef TYPE_3__* mount_t ;
typedef int dev_t ;
typedef TYPE_1__* buf_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_19__ {TYPE_3__* v_mount; } ;
struct TYPE_18__ {int mnt_ioflags; size_t mnt_devbsdunit; int mnt_throttle_mask; int mnt_pending_read_size; int mnt_pending_write_size; int mnt_last_write_issued_timestamp; } ;
struct TYPE_17__ {int p_flag; } ;
struct TYPE_16__ {int b_flags; int b_timestamp_tv; int b_upl; struct bufattr b_attr; } ;
struct TYPE_15__ {scalar_t__ d_strategy; } ;


 int BA_DELAYIDLESLEEP ;
 int BA_IO_TIER_UPGRADE ;
 int BA_META ;
 int BA_NOCACHE ;
 int BA_PASSIVE ;
 int B_ASYNC ;
 int B_CLUSTER ;
 int B_META ;
 int B_PAGEIO ;
 int B_PASSIVE ;
 int B_READ ;
 int DBG_DKRW ;
 int DBG_FUNC_NONE ;
 int DBG_THROTTLE ;
 int DKIO_ASYNC ;
 int DKIO_META ;
 int DKIO_NOCACHE ;
 int DKIO_PAGING ;
 int DKIO_PASSIVE ;
 int DKIO_READ ;
 int DKIO_THROTTLE ;
 int DKIO_TIER_MASK ;
 int DKIO_TIER_SHIFT ;
 int DKIO_TIER_UPGRADE ;
 scalar_t__ FALSE ;
 int FSDBG_CODE (int ,int) ;
 int INCR_PENDING_IO (int ,int ) ;
 int IOSCHED_METADATA_TIER ;
 int IO_SATISFIED_BY_CACHE ;
 int IO_SHOULD_BE_THROTTLED ;
 int IO_TIER_UPL_MISMATCH ;
 int KDEBUG_COMMON ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int,int,int ,int ) ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int ,int ) ;
 int LOWPRI_MAX_NUM_DEV ;
 int MNT_IOFLAGS_IOSCHED_SUPPORTED ;
 int P_DELAYIDLESLEEP ;
 int SET (int,int ) ;
 int SET_BUFATTR_IO_TIER (struct bufattr*,int) ;
 scalar_t__ TRUE ;
 struct _throttle_io_info_t* _throttle_io_info ;
 TYPE_14__* bdevsw ;
 int buf_blkno (TYPE_1__*) ;
 int buf_count (TYPE_1__*) ;
 int buf_device (TYPE_1__*) ;
 int buf_kernel_addrperm_addr (TYPE_1__*) ;
 TYPE_8__* buf_vnode (TYPE_1__*) ;
 int bufattr_markquickcomplete (struct bufattr*) ;
 TYPE_2__* current_proc () ;
 int current_thread () ;
 scalar_t__ disk_conditioner_mount_is_ssd (TYPE_3__*) ;
 scalar_t__ kdebug_enable ;
 size_t major (int ) ;
 int microuptime (int *) ;
 int stub1 (TYPE_1__*) ;
 int thread_update_io_stats (int ,int ,int) ;
 int throttle_get_io_policy (int *) ;
 int throttle_get_passive_io_policy (int *) ;
 int throttle_get_thread_throttle_level_internal (int ,int) ;
 int throttle_info_reset_window (int ) ;
 int throttle_info_set_initial_window (int ,struct _throttle_io_info_t*,scalar_t__,scalar_t__) ;
 int throttle_info_update_internal (struct _throttle_io_info_t*,int ,int,scalar_t__,scalar_t__,struct bufattr*) ;
 int upl_get_cached_tier (int ) ;

int
spec_strategy(struct vnop_strategy_args *ap)
{
 buf_t bp;
 int bflags;
 int io_tier;
 int passive;
 dev_t bdev;
 uthread_t ut;
 mount_t mp;
 struct bufattr *bap;
 int strategy_ret;
 struct _throttle_io_info_t *throttle_info;
 boolean_t isssd = FALSE;
 boolean_t inflight = FALSE;
 boolean_t upgrade = FALSE;
 int code = 0;


 proc_t curproc = current_proc();


        bp = ap->a_bp;
 bdev = buf_device(bp);
 mp = buf_vnode(bp)->v_mount;
 bap = &bp->b_attr;
 io_tier = throttle_get_io_policy(&ut);

 passive = throttle_get_passive_io_policy(&ut);






 if (mp && io_tier > throttle_get_thread_throttle_level_internal(ut, io_tier)) {





  upgrade = TRUE;

 }

 if (bp->b_flags & B_META)
  bap->ba_flags |= BA_META;
 SET_BUFATTR_IO_TIER(bap, io_tier);

 if (passive) {
  bp->b_flags |= B_PASSIVE;
  bap->ba_flags |= BA_PASSIVE;
 }


 if ((curproc != ((void*)0)) && ((curproc->p_flag & P_DELAYIDLESLEEP) == P_DELAYIDLESLEEP))
  bap->ba_flags |= BA_DELAYIDLESLEEP;


 bflags = bp->b_flags;

 if (((bflags & B_READ) == 0) && ((bflags & B_ASYNC) == 0))
  bufattr_markquickcomplete(bap);

 if (bflags & B_READ)
         code |= DKIO_READ;
 if (bflags & B_ASYNC)
         code |= DKIO_ASYNC;

 if (bap->ba_flags & BA_META)
         code |= DKIO_META;
 else if (bflags & B_PAGEIO)
         code |= DKIO_PAGING;

 if (io_tier != 0)
  code |= DKIO_THROTTLE;

 code |= ((io_tier << DKIO_TIER_SHIFT) & DKIO_TIER_MASK);

 if (bflags & B_PASSIVE)
  code |= DKIO_PASSIVE;

 if (bap->ba_flags & BA_NOCACHE)
  code |= DKIO_NOCACHE;

 if (upgrade) {
  code |= DKIO_TIER_UPGRADE;
  SET(bap->ba_flags, BA_IO_TIER_UPGRADE);
 }

 if (kdebug_enable) {
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_COMMON, FSDBG_CODE(DBG_DKRW, code) | DBG_FUNC_NONE,
       buf_kernel_addrperm_addr(bp), bdev, buf_blkno(bp), buf_count(bp), 0);
        }

 thread_update_io_stats(current_thread(), buf_count(bp), code);

 if (mp != ((void*)0)) {
  if (disk_conditioner_mount_is_ssd(mp))
   isssd = TRUE;





  if (mp->mnt_devbsdunit || (mp->mnt_throttle_mask != LOWPRI_MAX_NUM_DEV - 1 && mp->mnt_throttle_mask & 0x1)) {
   inflight = TRUE;
  }
  throttle_info = &_throttle_io_info[mp->mnt_devbsdunit];

 } else
  throttle_info = &_throttle_io_info[LOWPRI_MAX_NUM_DEV - 1];

 throttle_info_update_internal(throttle_info, ut, bflags, isssd, inflight, bap);

 if ((bflags & B_READ) == 0) {
  microuptime(&throttle_info->throttle_last_write_timestamp);

  if (mp) {
   mp->mnt_last_write_issued_timestamp = throttle_info->throttle_last_write_timestamp;
   INCR_PENDING_IO(buf_count(bp), mp->mnt_pending_write_size);
  }
 } else if (mp) {
  INCR_PENDING_IO(buf_count(bp), mp->mnt_pending_read_size);
 }
 typedef int strategy_fcn_ret_t(struct buf *bp);

 strategy_ret = (*(strategy_fcn_ret_t*)bdevsw[major(bdev)].d_strategy)(bp);




 microuptime(&bp->b_timestamp_tv);

 if (((int)0xcafefeed) == strategy_ret) {




  throttle_info_reset_window(ut);

 } else if (((int)0xcafebeef) == strategy_ret) {




  throttle_info_set_initial_window(ut, throttle_info, TRUE, isssd);
 }
 return (0);
}
