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
struct TYPE_3__ {scalar_t__ pict_type; scalar_t__ qscale; int rv10_version; int mb_x; int mb_y; int mb_width; int mb_num; int mb_height; int f_code; int unrestricted_mv; int /*<<< orphan*/  gb; void** last_dc; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PICTURE_TYPE_I ; 
 scalar_t__ AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int,...) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(MpegEncContext *s)
{
    int mb_count, pb_frame, marker, mb_xy;

    marker = FUNC4(&s->gb);

    if (FUNC4(&s->gb))
        s->pict_type = AV_PICTURE_TYPE_P;
    else
        s->pict_type = AV_PICTURE_TYPE_I;

    if (!marker)
        FUNC0(s->avctx, AV_LOG_ERROR, "marker missing\n");

    pb_frame = FUNC4(&s->gb);

    FUNC2(s->avctx, "pict_type=%d pb_frame=%d\n", s->pict_type, pb_frame);

    if (pb_frame) {
        FUNC1(s->avctx, "PB-frame");
        return AVERROR_PATCHWELCOME;
    }

    s->qscale = FUNC3(&s->gb, 5);
    if (s->qscale == 0) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Invalid qscale value: 0\n");
        return AVERROR_INVALIDDATA;
    }

    if (s->pict_type == AV_PICTURE_TYPE_I) {
        if (s->rv10_version == 3) {
            /* specific MPEG like DC coding not used */
            s->last_dc[0] = FUNC3(&s->gb, 8);
            s->last_dc[1] = FUNC3(&s->gb, 8);
            s->last_dc[2] = FUNC3(&s->gb, 8);
            FUNC2(s->avctx, "DC:%d %d %d\n", s->last_dc[0],
                    s->last_dc[1], s->last_dc[2]);
        }
    }
    /* if multiple packets per frame are sent, the position at which
     * to display the macroblocks is coded here */

    mb_xy = s->mb_x + s->mb_y * s->mb_width;
    if (FUNC5(&s->gb, 12) == 0 || (mb_xy && mb_xy < s->mb_num)) {
        s->mb_x  = FUNC3(&s->gb, 6); /* mb_x */
        s->mb_y  = FUNC3(&s->gb, 6); /* mb_y */
        mb_count = FUNC3(&s->gb, 12);
    } else {
        s->mb_x  = 0;
        s->mb_y  = 0;
        mb_count = s->mb_width * s->mb_height;
    }
    FUNC6(&s->gb, 3);   /* ignored */
    s->f_code          = 1;
    s->unrestricted_mv = 1;

    return mb_count;
}