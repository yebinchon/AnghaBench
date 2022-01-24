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
struct TYPE_3__ {scalar_t__ pict_type; int qscale; unsigned int mb_width; unsigned int mb_height; int /*<<< orphan*/  pb; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_PICTURE_TYPE_I ; 
 scalar_t__ AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

int FUNC4(MpegEncContext *s, int picture_number)
{
    int full_frame= 0;

    FUNC1(&s->pb);

    FUNC3(&s->pb, 1, 1);     /* marker */

    FUNC3(&s->pb, 1, (s->pict_type == AV_PICTURE_TYPE_P));

    FUNC3(&s->pb, 1, 0);     /* not PB-mframe */

    FUNC3(&s->pb, 5, s->qscale);

    if (s->pict_type == AV_PICTURE_TYPE_I) {
        /* specific MPEG like DC coding not used */
    }
    /* if multiple packets per frame are sent, the position at which
       to display the macroblocks is coded here */
    if(!full_frame){
        if (s->mb_width * s->mb_height >= (1U << 12)) {
            FUNC2(s->avctx, "Encoding frames with %d (>= 4096) macroblocks",
                                          s->mb_width * s->mb_height);
            return FUNC0(ENOSYS);
        }
        FUNC3(&s->pb, 6, 0); /* mb_x */
        FUNC3(&s->pb, 6, 0); /* mb_y */
        FUNC3(&s->pb, 12, s->mb_width * s->mb_height);
    }

    FUNC3(&s->pb, 3, 0);     /* ignored */
    return 0;
}