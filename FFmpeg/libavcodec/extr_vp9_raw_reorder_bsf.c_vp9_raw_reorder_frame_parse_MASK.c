#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int profile; int show_existing_frame; int refresh_frame_flags; void* show_frame; void* frame_type; void* frame_to_show; TYPE_1__* packet; } ;
typedef  TYPE_2__ VP9RawReorderFrame ;
struct TYPE_4__ {int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVBSFContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(AVBSFContext *bsf, VP9RawReorderFrame *frame)
{
    GetBitContext bc;
    int err;

    unsigned int frame_marker;
    unsigned int profile_low_bit, profile_high_bit, reserved_zero;
    unsigned int error_resilient_mode;
    unsigned int frame_sync_code;

    err = FUNC3(&bc, frame->packet->data, 8 * frame->packet->size);
    if (err)
        return err;

    frame_marker = FUNC1(&bc, 2);
    if (frame_marker != 2) {
        FUNC0(bsf, AV_LOG_ERROR, "Invalid frame marker: %u.\n",
               frame_marker);
        return AVERROR_INVALIDDATA;
    }

    profile_low_bit  = FUNC2(&bc);
    profile_high_bit = FUNC2(&bc);
    frame->profile = (profile_high_bit << 1) | profile_low_bit;
    if (frame->profile == 3) {
        reserved_zero = FUNC2(&bc);
        if (reserved_zero != 0) {
            FUNC0(bsf, AV_LOG_ERROR, "Profile reserved_zero bit set: "
                   "unsupported profile or invalid bitstream.\n");
            return AVERROR_INVALIDDATA;
        }
    }

    frame->show_existing_frame = FUNC2(&bc);
    if (frame->show_existing_frame) {
        frame->frame_to_show = FUNC1(&bc, 3);
        return 0;
    }

    frame->frame_type = FUNC2(&bc);
    frame->show_frame = FUNC2(&bc);
    error_resilient_mode = FUNC2(&bc);

    if (frame->frame_type == 0) {
        frame_sync_code = FUNC1(&bc, 24);
        if (frame_sync_code != 0x498342) {
            FUNC0(bsf, AV_LOG_ERROR, "Invalid frame sync code: %06x.\n",
                   frame_sync_code);
            return AVERROR_INVALIDDATA;
        }
        frame->refresh_frame_flags = 0xff;
    } else {
        unsigned int intra_only;

        if (frame->show_frame == 0)
            intra_only = FUNC2(&bc);
        else
            intra_only = 0;
        if (error_resilient_mode == 0) {
            // reset_frame_context
            FUNC4(&bc, 2);
        }
        if (intra_only) {
            frame_sync_code = FUNC1(&bc, 24);
            if (frame_sync_code != 0x498342) {
                FUNC0(bsf, AV_LOG_ERROR, "Invalid frame sync code: "
                       "%06x.\n", frame_sync_code);
                return AVERROR_INVALIDDATA;
            }
            if (frame->profile > 0) {
                unsigned int color_space;
                if (frame->profile >= 2) {
                    // ten_or_twelve_bit
                    FUNC4(&bc, 1);
                }
                color_space = FUNC1(&bc, 3);
                if (color_space != 7 /* CS_RGB */) {
                    // color_range
                    FUNC4(&bc, 1);
                    if (frame->profile == 1 || frame->profile == 3) {
                        // subsampling
                        FUNC4(&bc, 3);
                    }
                } else {
                    if (frame->profile == 1 || frame->profile == 3)
                        FUNC4(&bc, 1);
                }
            }
            frame->refresh_frame_flags = FUNC1(&bc, 8);
        } else {
            frame->refresh_frame_flags = FUNC1(&bc, 8);
        }
    }

    return 0;
}