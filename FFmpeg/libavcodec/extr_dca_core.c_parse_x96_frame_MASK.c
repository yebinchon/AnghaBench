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
struct TYPE_5__ {int x96_rev_no; int frame_size; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; int /*<<< orphan*/  nchannels; int /*<<< orphan*/  x96_nchannels; scalar_t__ x96_crc_present; } ;
typedef  TYPE_1__ DCACoreDecoder ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(DCACoreDecoder *s)
{
    int ret;

    // Revision number
    s->x96_rev_no = FUNC3(&s->gb, 4);
    if (s->x96_rev_no < 1 || s->x96_rev_no > 8) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Invalid X96 revision (%d)\n", s->x96_rev_no);
        return AVERROR_INVALIDDATA;
    }

    s->x96_crc_present = 0;
    s->x96_nchannels = s->nchannels;

    if ((ret = FUNC0(s)) < 0)
        return ret;

    if ((ret = FUNC4(s, 0, 0)) < 0)
        return ret;

    // Seek to the end of core frame
    if (FUNC2(&s->gb, s->frame_size * 8)) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Read past end of X96 frame\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}