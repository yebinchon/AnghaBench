#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ width; scalar_t__ height; int crop_left; int crop_right; scalar_t__ crop_top; scalar_t__ crop_bottom; scalar_t__* data; int /*<<< orphan*/  format; } ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_BUG ; 
 int AV_FRAME_CROP_UNALIGNED ; 
 int AV_PIX_FMT_FLAG_BITSTREAM ; 
 int AV_PIX_FMT_FLAG_HWACCEL ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int FUNC1 (int,int) ; 
 int INT_MAX ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,TYPE_2__*,TYPE_1__ const*) ; 
 int FUNC4 (size_t) ; 

int FUNC5(AVFrame *frame, int flags)
{
    const AVPixFmtDescriptor *desc;
    size_t offsets[4];
    int i;

    if (!(frame->width > 0 && frame->height > 0))
        return FUNC0(EINVAL);

    if (frame->crop_left >= INT_MAX - frame->crop_right        ||
        frame->crop_top  >= INT_MAX - frame->crop_bottom       ||
        (frame->crop_left + frame->crop_right) >= frame->width ||
        (frame->crop_top + frame->crop_bottom) >= frame->height)
        return FUNC0(ERANGE);

    desc = FUNC2(frame->format);
    if (!desc)
        return AVERROR_BUG;

    /* Apply just the right/bottom cropping for hwaccel formats. Bitstream
     * formats cannot be easily handled here either (and corresponding decoders
     * should not export any cropping anyway), so do the same for those as well.
     * */
    if (desc->flags & (AV_PIX_FMT_FLAG_BITSTREAM | AV_PIX_FMT_FLAG_HWACCEL)) {
        frame->width      -= frame->crop_right;
        frame->height     -= frame->crop_bottom;
        frame->crop_right  = 0;
        frame->crop_bottom = 0;
        return 0;
    }

    /* calculate the offsets for each plane */
    FUNC3(offsets, frame, desc);

    /* adjust the offsets to avoid breaking alignment */
    if (!(flags & AV_FRAME_CROP_UNALIGNED)) {
        int log2_crop_align = frame->crop_left ? FUNC4(frame->crop_left) : INT_MAX;
        int min_log2_align = INT_MAX;

        for (i = 0; frame->data[i]; i++) {
            int log2_align = offsets[i] ? FUNC4(offsets[i]) : INT_MAX;
            min_log2_align = FUNC1(log2_align, min_log2_align);
        }

        /* we assume, and it should always be true, that the data alignment is
         * related to the cropping alignment by a constant power-of-2 factor */
        if (log2_crop_align < min_log2_align)
            return AVERROR_BUG;

        if (min_log2_align < 5) {
            frame->crop_left &= ~((1 << (5 + log2_crop_align - min_log2_align)) - 1);
            FUNC3(offsets, frame, desc);
        }
    }

    for (i = 0; frame->data[i]; i++)
        frame->data[i] += offsets[i];

    frame->width      -= (frame->crop_left + frame->crop_right);
    frame->height     -= (frame->crop_top  + frame->crop_bottom);
    frame->crop_left   = 0;
    frame->crop_right  = 0;
    frame->crop_top    = 0;
    frame->crop_bottom = 0;

    return 0;
}