#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int recovery_frame_cnt; } ;
typedef  TYPE_1__ H264SEIRecoveryPoint ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int MAX_LOG2_MAX_FRAME_NUM ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(H264SEIRecoveryPoint *h, GetBitContext *gb, void *logctx)
{
    unsigned recovery_frame_cnt = FUNC1(gb);

    if (recovery_frame_cnt >= (1<<MAX_LOG2_MAX_FRAME_NUM)) {
        FUNC0(logctx, AV_LOG_ERROR, "recovery_frame_cnt %u is out of range\n", recovery_frame_cnt);
        return AVERROR_INVALIDDATA;
    }

    h->recovery_frame_cnt = recovery_frame_cnt;
    /* 1b exact_match_flag,
     * 1b broken_link_flag,
     * 2b changing_slice_group_idc */
    FUNC2(gb, 4);

    return 0;
}