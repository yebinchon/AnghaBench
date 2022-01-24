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
struct TYPE_3__ {int cpb_cnt; void* time_offset_length; void* dpb_output_delay_length; void* cpb_removal_delay_length; void* initial_cpb_removal_delay_length; } ;
typedef  TYPE_1__ SPS ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(GetBitContext *gb, AVCodecContext *avctx,
                                        SPS *sps)
{
    int cpb_count, i;
    cpb_count = FUNC3(gb) + 1;

    if (cpb_count > 32U) {
        FUNC0(avctx, AV_LOG_ERROR, "cpb_count %d invalid\n", cpb_count);
        return AVERROR_INVALIDDATA;
    }

    FUNC1(gb, 4); /* bit_rate_scale */
    FUNC1(gb, 4); /* cpb_size_scale */
    for (i = 0; i < cpb_count; i++) {
        FUNC4(gb); /* bit_rate_value_minus1 */
        FUNC4(gb); /* cpb_size_value_minus1 */
        FUNC2(gb);          /* cbr_flag */
    }
    sps->initial_cpb_removal_delay_length = FUNC1(gb, 5) + 1;
    sps->cpb_removal_delay_length         = FUNC1(gb, 5) + 1;
    sps->dpb_output_delay_length          = FUNC1(gb, 5) + 1;
    sps->time_offset_length               = FUNC1(gb, 5);
    sps->cpb_cnt                          = cpb_count;
    return 0;
}