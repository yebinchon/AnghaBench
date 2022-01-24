#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ codec_id; int height; int mb_y; int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ; 
 scalar_t__ SLICE_MIN_START_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(MpegEncContext *s)
{
    if (s->codec_id == AV_CODEC_ID_MPEG2VIDEO && s->height > 2800) {
        FUNC1(s, SLICE_MIN_START_CODE + (s->mb_y & 127));
        /* slice_vertical_position_extension */
        FUNC0(&s->pb, 3, s->mb_y >> 7);
    } else {
        FUNC1(s, SLICE_MIN_START_CODE + s->mb_y);
    }
    FUNC2(s);
    /* slice extra information */
    FUNC0(&s->pb, 1, 0);
}