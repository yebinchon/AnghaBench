#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; scalar_t__ last_frame_samples; scalar_t__ frame_num; } ;
typedef  TYPE_1__ TAKStreamInfo ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_LOG_ERROR ; 
 int TAK_FRAME_FLAG_HAS_INFO ; 
 int TAK_FRAME_FLAG_HAS_METADATA ; 
 int TAK_FRAME_FLAG_IS_LAST ; 
 int TAK_FRAME_HEADER_FLAGS_BITS ; 
 int TAK_FRAME_HEADER_NO_BITS ; 
 int TAK_FRAME_HEADER_SAMPLE_COUNT_BITS ; 
 scalar_t__ TAK_FRAME_HEADER_SYNC_ID ; 
 int TAK_FRAME_HEADER_SYNC_ID_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(AVCodecContext *avctx, GetBitContext *gb,
                               TAKStreamInfo *ti, int log_level_offset)
{
    if (FUNC3(gb, TAK_FRAME_HEADER_SYNC_ID_BITS) != TAK_FRAME_HEADER_SYNC_ID) {
        FUNC1(avctx, AV_LOG_ERROR + log_level_offset, "missing sync id\n");
        return AVERROR_INVALIDDATA;
    }

    ti->flags     = FUNC3(gb, TAK_FRAME_HEADER_FLAGS_BITS);
    ti->frame_num = FUNC3(gb, TAK_FRAME_HEADER_NO_BITS);

    if (ti->flags & TAK_FRAME_FLAG_IS_LAST) {
        ti->last_frame_samples = FUNC3(gb, TAK_FRAME_HEADER_SAMPLE_COUNT_BITS) + 1;
        FUNC4(gb, 2);
    } else {
        ti->last_frame_samples = 0;
    }

    if (ti->flags & TAK_FRAME_FLAG_HAS_INFO) {
        FUNC2(ti, gb);

        if (FUNC3(gb, 6))
            FUNC4(gb, 25);
        FUNC0(gb);
    }

    if (ti->flags & TAK_FRAME_FLAG_HAS_METADATA)
        return AVERROR_INVALIDDATA;

    FUNC4(gb, 24);

    return 0;
}