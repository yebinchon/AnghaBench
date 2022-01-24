#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uthread_t ;
struct vnop_strategy_args {TYPE_1__* a_bp; } ;
struct bufattr {int ba_flags; } ;
struct buf {int dummy; } ;
struct _throttle_io_info_t {int /*<<< orphan*/  throttle_last_write_timestamp; } ;
typedef  int (* strategy_fcn_ret_t ) (TYPE_1__*) ;
typedef  TYPE_2__* proc_t ;
typedef  TYPE_3__* mount_t ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  TYPE_1__* buf_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_19__ {TYPE_3__* v_mount; } ;
struct TYPE_18__ {int mnt_ioflags; size_t mnt_devbsdunit; int mnt_throttle_mask; int /*<<< orphan*/  mnt_pending_read_size; int /*<<< orphan*/  mnt_pending_write_size; int /*<<< orphan*/  mnt_last_write_issued_timestamp; } ;
struct TYPE_17__ {int p_flag; } ;
struct TYPE_16__ {int b_flags; int /*<<< orphan*/  b_timestamp_tv; int /*<<< orphan*/  b_upl; struct bufattr b_attr; } ;
struct TYPE_15__ {scalar_t__ d_strategy; } ;

/* Variables and functions */
 int BA_DELAYIDLESLEEP ; 
 int /*<<< orphan*/  BA_IO_TIER_UPGRADE ; 
 int BA_META ; 
 int BA_NOCACHE ; 
 int BA_PASSIVE ; 
 int B_ASYNC ; 
 int B_CLUSTER ; 
 int B_META ; 
 int B_PAGEIO ; 
 int B_PASSIVE ; 
 int B_READ ; 
 int /*<<< orphan*/  DBG_DKRW ; 
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  DBG_THROTTLE ; 
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
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IOSCHED_METADATA_TIER ; 
 int IO_SATISFIED_BY_CACHE ; 
 int IO_SHOULD_BE_THROTTLED ; 
 int IO_TIER_UPL_MISMATCH ; 
 int /*<<< orphan*/  KDEBUG_COMMON ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LOWPRI_MAX_NUM_DEV ; 
 int MNT_IOFLAGS_IOSCHED_SUPPORTED ; 
 int P_DELAYIDLESLEEP ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bufattr*,int) ; 
 scalar_t__ TRUE ; 
 struct _throttle_io_info_t* _throttle_io_info ; 
 TYPE_14__* bdevsw ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_8__* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct bufattr*) ; 
 TYPE_2__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 scalar_t__ kdebug_enable ; 
 size_t FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct _throttle_io_info_t*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct _throttle_io_info_t*,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,struct bufattr*) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 

int
FUNC26(struct vnop_strategy_args *ap)
{
	buf_t	bp;
	int	bflags;
	int	io_tier;
	int	passive;
	dev_t	bdev;
	uthread_t ut;
	mount_t mp;
	struct	bufattr *bap;
	int	strategy_ret;
	struct _throttle_io_info_t *throttle_info;
	boolean_t isssd = FALSE;
	boolean_t inflight = FALSE;
	boolean_t upgrade = FALSE;
	int code = 0;

#if !CONFIG_EMBEDDED
	proc_t curproc = FUNC12();
#endif /* !CONFIG_EMBEDDED */

        bp = ap->a_bp;
	bdev = FUNC8(bp);
	mp = FUNC10(bp)->v_mount;
	bap = &bp->b_attr;

#if CONFIG_IOSCHED
       if (bp->b_flags & B_CLUSTER) {

               io_tier = upl_get_cached_tier(bp->b_upl);

               if (io_tier == -1)
                       io_tier = throttle_get_io_policy(&ut);
#if DEVELOPMENT || DEBUG
               else {
                       int my_io_tier = throttle_get_io_policy(&ut);

                       if (io_tier != my_io_tier)
                               KERNEL_DEBUG_CONSTANT((FSDBG_CODE(DBG_THROTTLE, IO_TIER_UPL_MISMATCH)) | DBG_FUNC_NONE, buf_kernel_addrperm_addr(bp), my_io_tier, io_tier, 0, 0);
               }
#endif
       } else
               io_tier = throttle_get_io_policy(&ut);
#else
	io_tier = FUNC19(&ut);
#endif
	passive = FUNC20(&ut);

	/*
	 * Mark if the I/O was upgraded by throttle_get_thread_throttle_level
	 * while preserving the original issued tier (throttle_get_io_policy
	 * does not return upgraded tiers)
	 */
	if (mp && io_tier > FUNC21(ut, io_tier)) {
#if CONFIG_IOSCHED
		if (!(mp->mnt_ioflags & MNT_IOFLAGS_IOSCHED_SUPPORTED)) {
			upgrade = TRUE;
		}
#else /* CONFIG_IOSCHED */
		upgrade = TRUE;
#endif /* CONFIG_IOSCHED */
	}

	if (bp->b_flags & B_META)
		bap->ba_flags |= BA_META;

#if CONFIG_IOSCHED
	/* 
	 * For I/O Scheduling, we currently do not have a way to track and expedite metadata I/Os.
	 * To ensure we dont get into priority inversions due to metadata I/Os, we use the following rules:
	 * For metadata reads, ceil all I/Os to IOSCHED_METADATA_TIER & mark them passive if the I/O tier was upgraded
	 * For metadata writes, unconditionally mark them as IOSCHED_METADATA_TIER and passive
	 */
	if (bap->ba_flags & BA_META) {
		if (mp && (mp->mnt_ioflags & MNT_IOFLAGS_IOSCHED_SUPPORTED)) {
			if (bp->b_flags & B_READ) {
				if (io_tier > IOSCHED_METADATA_TIER) {
					io_tier = IOSCHED_METADATA_TIER;
					passive = 1;
				}
			} else {
				io_tier = IOSCHED_METADATA_TIER;
				passive = 1;
			}
		}
	}
#endif /* CONFIG_IOSCHED */
			
	FUNC5(bap, io_tier);

	if (passive) {
		bp->b_flags |= B_PASSIVE;
		bap->ba_flags |= BA_PASSIVE;
	}

#if !CONFIG_EMBEDDED
	if ((curproc != NULL) && ((curproc->p_flag & P_DELAYIDLESLEEP) == P_DELAYIDLESLEEP))
		bap->ba_flags |= BA_DELAYIDLESLEEP;
#endif /* !CONFIG_EMBEDDED */
		
	bflags = bp->b_flags;

	if (((bflags & B_READ) == 0) && ((bflags & B_ASYNC) == 0))
		FUNC11(bap);

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
		FUNC4(bap->ba_flags, BA_IO_TIER_UPGRADE);
	}

	if (kdebug_enable) {
		FUNC3(KDEBUG_COMMON, FUNC0(DBG_DKRW, code) | DBG_FUNC_NONE,
					  FUNC9(bp), bdev, FUNC6(bp), FUNC7(bp), 0);
        }

	FUNC18(FUNC13(), FUNC7(bp), code);

	if (mp != NULL) {
		if (FUNC14(mp))
			isssd = TRUE;
		/*
		 * Partially initialized mounts don't have a final devbsdunit and should not be tracked.
		 * Verify that devbsdunit is initialized (non-zero) or that 0 is the correct initialized value
		 * (mnt_throttle_mask is initialized and num_trailing_0 would be 0)
		 */
		if (mp->mnt_devbsdunit || (mp->mnt_throttle_mask != LOWPRI_MAX_NUM_DEV - 1 && mp->mnt_throttle_mask & 0x1)) {
			inflight = TRUE;
		}
		throttle_info = &_throttle_io_info[mp->mnt_devbsdunit];

	} else
		throttle_info = &_throttle_io_info[LOWPRI_MAX_NUM_DEV - 1];

	FUNC24(throttle_info, ut, bflags, isssd, inflight, bap);

	if ((bflags & B_READ) == 0) {
		FUNC16(&throttle_info->throttle_last_write_timestamp);

		if (mp) {
			mp->mnt_last_write_issued_timestamp = throttle_info->throttle_last_write_timestamp;
			FUNC1(FUNC7(bp), mp->mnt_pending_write_size);
		}
	} else if (mp) {
		FUNC1(FUNC7(bp), mp->mnt_pending_read_size);
	}
	/*
	 * The BootCache may give us special information about
	 * the IO, so it returns special values that we check
	 * for here.
	 *
	 * IO_SATISFIED_BY_CACHE
	 * The read has been satisfied by the boot cache. Don't
	 * throttle the thread unnecessarily.
	 *
	 * IO_SHOULD_BE_THROTTLED
	 * The boot cache is playing back a playlist and this IO
	 * cut through. Throttle it so we're not cutting through
	 * the boot cache too often.
	 *
	 * Note that typical strategy routines are defined with
	 * a void return so we'll get garbage here. In the 
	 * unlikely case the garbage matches our special return
	 * value, it's not a big deal since we're only adjusting
	 * the throttling delay.
 	 */
#define IO_SATISFIED_BY_CACHE  ((int)0xcafefeed)
#define IO_SHOULD_BE_THROTTLED ((int)0xcafebeef)
	typedef	int strategy_fcn_ret_t(struct buf *bp);
	
	strategy_ret = (*(strategy_fcn_ret_t*)bdevsw[FUNC15(bdev)].d_strategy)(bp);

	// disk conditioner needs to track when this I/O actually starts
	// which means track it after `strategy` which may include delays
	// from inflight I/Os
	FUNC16(&bp->b_timestamp_tv);
	
	if (IO_SATISFIED_BY_CACHE == strategy_ret) {
		/*
		 * If this was a throttled IO satisfied by the boot cache,
		 * don't delay the thread.
		 */
		FUNC22(ut);

	} else if (IO_SHOULD_BE_THROTTLED == strategy_ret) {
		/*
		 * If the boot cache indicates this IO should be throttled,
		 * delay the thread.
		 */
		FUNC23(ut, throttle_info, TRUE, isssd);
	}
	return (0);
}